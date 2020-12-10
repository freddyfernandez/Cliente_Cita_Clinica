package com.empresa.entity;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class Horario {
	
	private int idHorario;
	
	private String dia;
	
    private String fechaHorario;

	private String horaInicio;
	

	private String horaFin;
	

	private Medico idMedico;

}
