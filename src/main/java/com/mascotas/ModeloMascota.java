package com.mascotas;

public class ModeloMascota {
	private int id;
	private String nombreAnimal;
	private String nombreDueno;
	private String especie;
	private String sexo;
	private String raza;
	private String color;
	private float edadAprox;
	private String estadoReproductivo;
	private int tiempoEstadia;
	
	public ModeloMascota(){}
	
	public ModeloMascota(int id, String nombreAnimal, String nombreDueno, String especie, String sexo, String raza,
			String color, float edadAprox, String estadoReproductivo, int tiempoEstadia) {
		super();
		this.id = id;
		this.nombreAnimal = nombreAnimal;
		this.nombreDueno = nombreDueno;
		this.especie = especie;
		this.sexo = sexo;
		this.raza = raza;
		this.color = color;
		this.edadAprox = edadAprox;
		this.estadoReproductivo = estadoReproductivo;
		this.tiempoEstadia = tiempoEstadia;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombreAnimal() {
		return nombreAnimal;
	}

	public void setNombreAnimal(String nombreAnimal) {
		this.nombreAnimal = nombreAnimal;
	}

	public String getNombreDueno() {
		return nombreDueno;
	}

	public void setNombreDueno(String nombreDueno) {
		this.nombreDueno = nombreDueno;
	}

	public String getEspecie() {
		return especie;
	}

	public void setEspecie(String especie) {
		this.especie = especie;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getRaza() {
		return raza;
	}

	public void setRaza(String raza) {
		this.raza = raza;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public float getEdadAprox() {
		return edadAprox;
	}

	public void setEdadAprox(float edadAprox) {
		this.edadAprox = edadAprox;
	}

	public String getEstadoReproductivo() {
		return estadoReproductivo;
	}

	public void setEstadoReproductivo(String estadoReproductivo) {
		this.estadoReproductivo = estadoReproductivo;
	}

	public int getTiempoEstadia() {
		return tiempoEstadia;
	}

	public void setTiempoEstadia(int tiempoEstadia) {
		this.tiempoEstadia = tiempoEstadia;
	}
	
	
	
}
