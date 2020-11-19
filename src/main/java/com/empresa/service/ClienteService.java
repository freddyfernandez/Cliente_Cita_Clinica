package com.empresa.service;

import com.empresa.entity.Cliente;

public interface ClienteService {

	public abstract Cliente login(Cliente bean);
	public abstract Cliente RegistrarCliente(Cliente bean);

	
	
}
