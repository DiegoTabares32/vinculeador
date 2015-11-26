package com.javaweb.strategy;

import java.util.ArrayList;
import java.util.List;

import com.javaweb.modelo.Persona;

public class Joven implements EdadStrategy{
	
	@Override
	public List<Persona> filter(List<Persona> listToFilter) {
		
		List<Persona> result = new ArrayList<Persona>();
		
		for(Persona p : listToFilter){
			if(p.getEdad() >= 21 && p.getEdad() <=26){
				result.add(p);
			}
		}
		
		return result;
	}

}
