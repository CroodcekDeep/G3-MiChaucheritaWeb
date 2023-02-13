package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Cuenta;
import models.Movimiento;
import models.Persona;

/**
 * Servlet implementation class GestionarMovimientosController
 */
@WebServlet("/GestionarMovimientosController")
public class GestionarMovimientosController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GestionarMovimientosController() {
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
		String ruta = (request.getParameter("ruta") == null)? "listarMovimientosDeCuenta": request.getParameter("ruta");
		switch (ruta) {
		case "listarMovimientosDeCuenta":
			this.listarMovimientosDeCuenta(request, response);
			break;
		case "verMovimientosGenerales":
			this.verMovimientosGenerales(request, response);
			break;
		case "verDetalleMovimiento":
			this.verDetalleMovimiento(request, response);
			break;
		}
	}
	
	private void listarMovimientosDeCuenta(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.obtener datos
		int idCuenta = Integer.parseInt(request.getParameter("idCuenta"));
		//2. llamar al modelo
		Persona modeloPersona = new Persona();
		Cuenta cuenta = modeloPersona.getCuentaById(idCuenta);
		List<Movimiento> movimientosDeCuenta = cuenta.getMovimientosByIdCuenta(idCuenta);
		
		//3. llamar a la vista
		request.setAttribute("movimientosDeCuenta", movimientosDeCuenta);
		request.getRequestDispatcher("/jsp/movimientosDeCuenta.jsp").forward(request, response);
	}
	
	private void verMovimientosGenerales(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.obtener datos
		//2. llamar al modelo
		Persona modeloPersona = new Persona();
		Cuenta cuenta = modeloPersona.getCuentaById(1);
		List<Movimiento> movimientosDeCuenta = cuenta.getMovimientos();
		
		//3. llamar a la vista
		request.setAttribute("movimientosDeCuenta", movimientosDeCuenta);
		request.getRequestDispatcher("/jsp/movimientosDeCuenta.jsp").forward(request, response);
	}

	private void verDetalleMovimiento(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.obtener datos
		int idMovimiento = Integer.parseInt(request.getParameter("idMovimiento"));
		//2. llamar al modelo
		Persona modeloPersona = new Persona();
		Cuenta modeloCuenta = modeloPersona.getCuentaById(1);
		Movimiento movimientoDeCuenta= modeloCuenta.getMovimientoById(idMovimiento);
		
		//3. llamar a la vista
		request.setAttribute("movimientoDeCuenta", movimientoDeCuenta);
		request.getRequestDispatcher("/jsp/detalleMovimiento.jsp").forward(request, response);
	}
}