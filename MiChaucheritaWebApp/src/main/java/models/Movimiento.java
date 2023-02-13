package models;

import java.io.Serializable;
import java.time.LocalDate;

public class Movimiento implements Serializable {

	private static final long serialVersionUID = 1L;
	private int idMovimiento;
	private Cuenta cuentaOrigen;
	private Cuenta cuentaDestino;
	private String concepto;
	private double valor;
	private LocalDate fecha;
	
	
	public Movimiento(int idMovimiento, Cuenta cuentaOrigen, Cuenta cuentaDestino, String concepto, double valor,
			LocalDate fecha) {
		super();
		this.idMovimiento = idMovimiento;
		this.cuentaOrigen = cuentaOrigen;
		this.cuentaDestino = cuentaDestino;
		this.concepto = concepto;
		this.valor = valor;
		this.fecha = fecha;
	}


	public int getIdMovimiento() {
		return idMovimiento;
	}


	public void setIdMovimiento(int idMovimiento) {
		this.idMovimiento = idMovimiento;
	}


	public Cuenta getCuentaOrigen() {
		return cuentaOrigen;
	}


	public void setCuentaOrigen(Cuenta cuentaOrigen) {
		this.cuentaOrigen = cuentaOrigen;
	}


	public Cuenta getCuentaDestino() {
		return cuentaDestino;
	}


	public void setCuentaDestino(Cuenta cuentaDestino) {
		this.cuentaDestino = cuentaDestino;
	}


	public String getConcepto() {
		return concepto;
	}


	public void setConcepto(String concepto) {
		this.concepto = concepto;
	}


	public double getValor() {
		return valor;
	}


	public void setValor(double valor) {
		this.valor = valor;
	}


	public LocalDate getFecha() {
		return fecha;
	}


	public void setFecha(LocalDate fecha) {
		this.fecha = fecha;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
}