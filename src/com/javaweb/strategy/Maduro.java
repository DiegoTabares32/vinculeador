package com.javaweb.strategy;

import java.util.ArrayList;
import java.util.List;

import com.javaweb.modelo.Persona;

public class Maduro implements EdadStrategy{
	
	@Override
	public List<Persona> filter(List<Persona> listToFilter) {
		
		List<Persona> result = new ArrayList<Persona>();
		
		for(Persona p : listToFilter){
			if(p.getEdad() >= 27 && p.getEdad() <=40){
				result.add(p);
			}
		}
		
		return result;
	}

}