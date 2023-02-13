package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Cuenta;
import models.Gasto;
import models.Ingreso;
import models.IngresoGasto;
import models.Persona;

/**
 * Servlet implementation class GestionarCuentaController
 */
@WebServlet("/GestionarCuentaController")
public class GestionarCuentaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GestionarCuentaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesar(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesar(request, response);
	}

	private void procesar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ruta = (request.getParameter("ruta") == null)? "listarCuentas": request.getParameter("ruta");
		switch (ruta) {
		case "listarCuentas":
			this.listarCuentas(request, response);
			break;
		case "nuevo" :
			this.nuevaCuenta(request, response);
			break;
		case "guardar" :
			this.guardar(request, response);
			break;
		case "ver" :
			this.ver(request, response);
			break;
		case "modificar":
			this.modificar(request, response);
			break;
		case "guardarActualizacion":
			this.guardarActualizacion(request, response);
			break;
		case "eliminar":
			this.eliminar(request, response);	
			break;
		}
	}
	
	private void listarCuentas(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.obtener datos
		//2. llamar al modelo
		Persona modeloPersona = new Persona();
		List<Cuenta> cuentas = Persona.getCuentas();
	
		//3. llamar a la vista
		request.setAttribute("cuentas", cuentas);
		request.getRequestDispatcher("/jsp/listarCuentas.jsp").forward(request, response);
	}
	private void nuevaCuenta(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/jsp/insertarCuenta.jsp").forward(request, response);
	}
	private void guardar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre = request.getParameter("txtNombre");
		String monto = request.getParameter("txtMonto");
		String tipo = request.getParameter("tipo");
		Persona personaModelo = new Persona();
		Cuenta c = null;
		if(tipo.equals("Ingreso")) {
			c = new Ingreso(0,nombre, Double.parseDouble(monto));
		}else if(tipo.equals("Gasto")) {
			c = new Gasto(0,nombre);
		}else if(tipo.equals("IngresoGasto")) {
			c = new IngresoGasto(0,nombre);
		}
		personaModelo.crearCuenta(c);
		this.listarCuentas(request, response);
	}
	private void ver(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Persona personaModelo = new Persona();
		Cuenta cuenta = personaModelo.getCuentaById(Integer.parseInt(request.getParameter("id")));
		request.setAttribute("cuenta", cuenta);
		request.getRequestDispatcher("/jsp/verCuenta.jsp").forward(request, response);
	}
	private void modificar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Persona personaModelo = new Persona();
		Cuenta cuenta = personaModelo.getCuentaById(Integer.parseInt(request.getParameter("id")));
		request.setAttribute("cuenta", cuenta);
		request.getRequestDispatcher("/jsp/modificarCuenta.jsp").forward(request, response);
	}
	private void guardarActualizacion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre = request.getParameter("txtNombre");
		Persona personaModelo = new Persona();
		Cuenta cuenta = personaModelo.getCuentaById(Integer.parseInt(request.getParameter("id")));
		cuenta.actualizarCuenta(nombre);
		this.listarCuentas(request, response);
	}
	private void eliminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Persona personaModelo = new Persona();
		personaModelo.eliminarCuenta(Integer.parseInt(request.getParameter("id")));
		this.listarCuentas(request, response);
	}
}
