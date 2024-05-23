package com.techpalle.encapsulation;

public class Person {
	
	public static void main(String[] args)
	{
		Bank2 b = new Bank2();
		int i = b.getMoney();
	}

}

class Bank2
{
	private int Money = 1000;
	public int getMoney()
	{
		return Money;
	}
	public void setMoney(int Money)
	{
		this.Money = Money;
	}
}
