package com.empresa.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.empresa.entity.Cliente;
import com.empresa.repository.ClienteRepository;



@Service
public class ClienteServiceImpl implements ClienteService {

	@Autowired
	private ClienteRepository repository;



	@Override
	public Cliente login(Cliente bean) {
		// TODO Auto-generated method stub
		return repository.login(bean);
	}

	@Override
	public Cliente RegistrarCliente(Cliente bean) {
		// TODO Auto-generated method stub
		return repository.save(bean);
	}

}
