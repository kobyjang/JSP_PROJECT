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
		Pet dog = new Pet("P0001", "�����", 50000 );
		dog.setSex("��");
		dog.setAtype("���");
		dog.setAdopt("�о���");
		dog.setDescription("5����/���/�¼�");
		dog.setFilename("P0001.jpg");

		Pet cat = new Pet("P0010", "������", 40000);
		cat.setSex("��");
		cat.setAtype("����");
		cat.setAdopt("�о���");
		cat.setDescription("4����/���/�ֱ�����");
		cat.setFilename("P0010.jpg");

		Pet etc = new Pet("P0100", "�忩��", 10000);
		etc.setSex("��");
		etc.setAtype("�縷����");
		etc.setAdopt("������");
		etc.setDescription("3����/���/Ȱ��");
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