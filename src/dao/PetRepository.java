package dao;

import java.util.ArrayList;

import dto.Pet;

public class PetRepository {
	
	private ArrayList<Pet> listOfPets = new ArrayList<Pet>();
	private static PetRepository instance = new PetRepository();

	public static PetRepository getInstance(){
		return instance;
	} 


	
	public PetRepository() {
		Pet dog = new Pet("P0001", "비숑이", 50000 );
		dog.setSex("남");
		dog.setAtype("비숑");
		dog.setAdopt("분양중");
		dog.setDescription("5개월/흰색/온순");
		dog.setFilename("P0001.jpg");

		Pet cat = new Pet("P0010", "랙돌이", 40000);
		cat.setSex("여");
		cat.setAtype("랙돌");
		cat.setAdopt("분양중");
		cat.setDescription("4개월/흰색/애교많음");
		cat.setFilename("P0010.jpg");

		Pet etc = new Pet("P0100", "장여우", 10000);
		etc.setSex("남");
		etc.setAtype("사막여우");
		etc.setAdopt("예약중");
		etc.setDescription("3개월/흰색/활발");
		etc.setFilename("P0100.jpg");

		listOfPets.add(dog);
		listOfPets.add(cat);
		listOfPets.add(etc);
	}

	public ArrayList<Pet> getAllPets() {
		return listOfPets;
	}
	
	public Pet getPetById(String petId) {
		Pet petById = null;

		for (int i = 0; i < listOfPets.size(); i++) {
			Pet pet = listOfPets.get(i);
			if (pet != null && pet.getPetId() != null && pet.getPetId().equals(petId)) {
				petById = pet;
				break;
			}
		}
		return petById;
	}
	
	public void addPet(Pet pet) {
		listOfPets.add(pet);
	}
}