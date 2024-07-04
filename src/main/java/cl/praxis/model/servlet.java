package cl.praxis.model;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//--Se le da un valor a Servlet: "Calculo", para mejorar la visual del formato HTML y no alterar lo solicitado.--
@WebServlet(name = "servlet", value = "/calculo")
public class servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// --Constructor Vacio--
	public servlet() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

	}

	// --Se utiliza el método doPost para transferir información por body según lo
	// solicitado.--
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		// --Se realizan las operaciones por método Try, esto para aprovechar la
		// utilizacion de multiples excepciones con multi-Catch.--
		try {

			// --Variables a utilizar.--
			String solucion = "";
			Double x = Double.parseDouble(request.getParameter("num1"));
			Double y = Double.parseDouble(request.getParameter("num2"));
			String funcion = request.getParameter("funcion");
			String total = new String(" total = ");

			switch (funcion) {
			case "suma":
				solucion = "Suma" + total + (x + y);
				break;
			case "resta":
				solucion = "Resta" + total + (x - y);
				break;
			case "multiplicar":
				solucion = "Multiplicación" + total + (x * y);
				break;
			case "dividir":
				// --Se utiliza if-else para generar excepcion aritmetica de división por 0.--
				if (y != 0) {
					solucion = "División" + total + (x / y);
				} else if (y == 0) {
					throw new ArithmeticException("División por cero no se puede definir: RESULTADO INDEFINIDO");
				}
				break;
			case "ordenar":
				// --Se usa función Math (min, max) para ordenar numeros de menor a mayor.--
				solucion = "De menor a mayor: Primero es " + Math.min(x, y) + " | Segundo es " + Math.max(x, y);
				break;
			case "parImpar":
				// --Se aplica la el metodo (n % 2) para determinar el paridad de los digitos.--
				String xFParImpar = (x % 2 == 0)?"par":"impar";
				String yFParImpar = (y % 2 == 0)?"par":"impar";
				solucion = x + " es un número " + xFParImpar + " | " + y + " es un número " + yFParImpar;
				break;
			default:
				throw new IllegalArgumentException("No se puede procesar la operación");
			}
			// --Se comparte informacion entre el servlet y exito.jsp, redireccionando al usuario
			// a esta última página con los resultados correctos.--
			request.setAttribute("solucion", solucion);
			request.getServletContext().getRequestDispatcher("/exito.jsp").forward(request, response);
			// --De lo contrario se analizan las 3 excepciones: excepción de letras,
			// excepción aritmética x/0, excepción de errores generales. Al existir alguna lleva
			// al usuario a página error.jsp.--
		} catch (NumberFormatException e) {
			request.setAttribute("error",
					"Los datos ingresados no son válidos, vuelva a probar introduciendo solo números.");
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		} catch (ArithmeticException e) {
			request.setAttribute("error", e.getMessage());
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		} catch (Exception e) {
			request.setAttribute("error", e.getMessage());
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
	}
}