package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.dao.DAOFactory;
import modelo.dto.CuentaDTO;
import modelo.entidades.Cuenta;

@WebServlet("/RegistrarMovimientosController")
public class RegistrarMovimientosController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public RegistrarMovimientosController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ruteador(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ruteador(request, response);
	}
	
	private void ruteador(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ruta = (request.getParameter("ruta")==null?"ver":request.getParameter("ruta"));
		
		switch(ruta) {
		case "ver":
			showDashboard(request, response);
			break;
		case "nuevoIngreso":
			crearIngreso(request, response);
			break;
		}
	}

	private void showDashboard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("DashboardController").forward(request, response);
	}

	private void crearIngreso(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Cuenta> cuentasIngreso = DAOFactory.getFactory().getCuentaDAO().getCuentasIngreso();
		List<Cuenta> cuentasIngresoGasto = DAOFactory.getFactory().getCuentaDAO().getCuentasIngresoGasto();
		
		request.setAttribute("cuentasIngreso", cuentasIngreso);
		request.setAttribute("cuentasIngresoGasto", cuentasIngresoGasto);
		
		request.getRequestDispatcher("/jsp/ingreso.jsp").forward(request, response);
		
	}

}
