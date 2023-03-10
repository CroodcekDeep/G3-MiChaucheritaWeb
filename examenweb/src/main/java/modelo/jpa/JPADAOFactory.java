package modelo.jpa;

import modelo.dao.CuentaDAO;
import modelo.dao.DAOFactory;
import modelo.dao.MovimientoDAO;
import modelo.dao.UsuarioDAO;

public class JPADAOFactory extends DAOFactory {

	@Override
	public UsuarioDAO getUsuarioDAO() {
		// new JPAUsuarioDAO()
		return null;
	}

	@Override
	public CuentaDAO getCuentaDAO() {
		return new JPACuentaDAO();
	}

	@Override
	public MovimientoDAO getMovimientoDAO() {
		return new JPAMovimientoDAO();
	}

	


}
