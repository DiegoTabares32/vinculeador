package com.javaweb.dao;

import java.util.ArrayList;
import java.util.List;

import com.javaweb.modelo.Persona;
import com.javaweb.strategy.EdadStrategy;
import com.javaweb.strategy.Jovato;
import com.javaweb.strategy.Joven;
import com.javaweb.strategy.Maduro;

public class PersonaDAO {

	private static PersonaDAO instance;
	private List<Persona> personasRepo = new ArrayList<Persona>();
	
	private PersonaDAO(){
		super();
		this.initPersonas();
	}
	
	private void initPersonas(){
		//hombres
		personasRepo.add(new Persona("Chongo","Daniel", Persona.FLACO, 24));
		personasRepo.add(new Persona("Chongo","Fernando", Persona.NORMAL, 56));
		personasRepo.add(new Persona("Chongo","Luis", Persona.ATLETICO, 32));
		personasRepo.add(new Persona("Chongo", "Claudio", Persona.ATLETICO, 24));
		personasRepo.add(new Persona("Chongo","Franco", Persona.ATLETICO, 29));
		personasRepo.add(new Persona("Chongo","Diego", Persona.NORMAL, 25));
		personasRepo.add(new Persona("Chongo","Matias", Persona.KG_DE_MAS, 41));
		personasRepo.add(new Persona("Chongo","Jorge", Persona.MUSCULOSO, 21));
		personasRepo.add(new Persona("Chongo","Arturo", Persona.FLACO, 73));
		personasRepo.add(new Persona("Chongo","Eric", Persona.NORMAL, 29));
		
		//mujeres
		personasRepo.add(new Persona("Chonga","Micalea", Persona.KG_DE_MAS, 36));
		personasRepo.add(new Persona("Chonga","Laura", Persona.ATLETICA, 33));
		personasRepo.add(new Persona("Chonga","Agustina", Persona.FLACA, 29));
		personasRepo.add(new Persona("Chonga","Manuela", Persona.NORMAL, 27));
		personasRepo.add(new Persona("Chonga","Clara", Persona.NORMAL, 58));
		personasRepo.add(new Persona("Chonga","Analía", Persona.KG_DE_MAS, 42));
		personasRepo.add(new Persona("Chonga","Isabel", Persona.MUSCULOSA, 32));
		personasRepo.add(new Persona("Chonga","Mariana", Persona.ATLETICA, 72));
	}
	
	public static PersonaDAO getInstance() {

		if(instance == null){
			instance = new PersonaDAO();			
		}
		return instance;
	}
	
	public List<Persona> getParejas(String sexo, String edad, String fisico){
		EdadStrategy edadStrategy = null;
		
		List<Persona> result = new ArrayList<Persona>();
		
		List<Persona> bySex = new ArrayList<Persona>();
		
		if(sexo.equals("todo")){
			bySex.addAll(this.personasRepo);
		}else{
			for(Persona p : this.personasRepo){
				if(p.getSexo().equals(sexo)){
					bySex.add(p);
				}
			}
		}
		
		if(edad.equals("joven")){
			edadStrategy = new Joven();
		}else if(edad.equals("maduro")){
			edadStrategy = new Maduro();
		}else{
			edadStrategy = new Jovato();
		}
		
		List<Persona> byAge = edadStrategy.filter(bySex);
		
		for(Persona p : byAge){
			if(p.getContextura().equals(fisico)){
				result.add(p);
			}
		}
					
		return result;
	}

}
