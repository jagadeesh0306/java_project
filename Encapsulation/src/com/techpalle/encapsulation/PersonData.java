package com.techpalle.encapsulation;

public class PersonData {

	public static void main(String[] args) {
		Person1 p1 = new Person1();
		long l = p1.getAadhar();
		System.out.println(l);
		Person1 p2 = new Person1();
		String s = p2.getPan();
		System.out.println(s);
		
	}

}

class Person1
{
	private long aadhar = 649765628922L;
	private String pan = "JHJFYG747";
	
	public long getAadhar()
	{
		return aadhar;
	}
	public void setAadhar(String pan)
	{
		this.pan = pan;
	}
	public String getPan()
	{
		return pan;
	}
	public void setPan(String pan)
	{
		this.pan = pan;
	}
}
