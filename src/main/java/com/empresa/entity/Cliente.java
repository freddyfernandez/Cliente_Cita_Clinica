package com.empresa.entity;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class Cliente {	
	//se sobreentiende que los atrbutos declarados son iguales a los campos de la base de datos
	//al realizar @column se declara el name igual a la bd y los atributos podrian cambiar a cualquier otro nombre
	private int idPaciente;
	private String nombre;
	private String apellido;
	private String dni;
	private String nrocelular;
	private String login;
	private String password;
}
