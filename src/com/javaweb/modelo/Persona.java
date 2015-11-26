package com.javaweb.modelo;

public class Persona {
	
	private String sexo;
	private String nombre;
	private String contextura;
	private int edad;
	
	public static final String NORMAL = "Normal";
	public static final String KG_DE_MAS = "Kilitos de mas";
	public static final String FLACO = "Flaco";
	public static final String MUSCULOSO = "Musculoso";
	public static final String ATLETICO = "Atlético";
	public static final String ATLETICA = "Atlética";
	public static final String FLACA = "Flaca";
	public static final String MUSCULOSA = "Musculosa";
	
	public Persona(String sexo, String nom, String fisico, int edad){
		super();
		this.sexo = sexo;
		this.nombre = nom;
		this.contextura = fisico;
		this.edad = edad;				
	}
	
	public String getContextura() {
		return contextura;
	}

	public int getEdad() {
		return edad;
	}
	
	public String getNombre() {
		return nombre;
	}
	
	public String getSexo() {
		return sexo;
	}
}