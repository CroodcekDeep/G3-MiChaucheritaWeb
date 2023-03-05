package modelo.dao;

import java.util.List;

import modelo.dto.CuentaDTO;
import modelo.entidades.Cuenta;

public interface CuentaDAO extends GenericDAO<Cuenta, Integer> {

	public List<CuentaDTO> getConsolidadoCuentasIngreso(int mes);
	public List<CuentaDTO> getConsolidadoCuentsEgreso(int mes);
	public List<Cuenta> getConsolidadoCuentasIngresoEgreso();
	
	public List<Cuenta> getCuentasIngreso();
	public List<Cuenta> getCuentasIngresoGasto();
	
	
}
