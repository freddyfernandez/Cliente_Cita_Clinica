package com.empresa.entity;
import java.io.Serializable;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Cita implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int idCita;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private String fechaCita;
	
	@DateTimeFormat(pattern = "HH:mm")
	private String horaInicio;
	
	@DateTimeFormat(pattern = "HH:mm")
	private String  horaFin;
	
	private String estado;
	private Medico medico;
	private Cliente paciente;
	
	

}
