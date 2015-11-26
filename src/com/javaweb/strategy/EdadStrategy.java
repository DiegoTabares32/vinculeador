package com.javaweb.strategy;

import java.util.List;

import com.javaweb.modelo.Persona;

public interface EdadStrategy {

	
	public List<Persona> filter(List<Persona> listToFilter);
}
