package com.techpalle.encapsulation;

public class Test {

	public static void main(String[] args) {
	Doctor d=new Doctor();
	System.out.println(d.name);
	System.out.println(d.exp);
	
	}

}
class Doctor
{
	String name="babu";
	int exp=10;
	public String medicine(String diesease)
	{
		return diesease;
		
		
	}
}
