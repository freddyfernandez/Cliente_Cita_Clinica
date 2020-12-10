package com.empresa.entity;

import lombok.Getter;

import lombok.Setter;

@Getter
@Setter

public class Medico {
	

	private int idMedico;
	private String nombre;
	private String apellido;
	private String dni;
	private String direccion;
	private String nroCelular;
	private String login;
	private String password;
	private Especialidad especialidad;
	

}
