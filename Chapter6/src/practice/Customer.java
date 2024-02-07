package practice;

public class Customer {
	public String name;
	public int money;
	
	
	public Customer (String name , int money) {
		this.name = name;
		this.money = money;
	}
	
	public void takeStarCoffee(StarCoffee cafe, int price)
	{                                    
		cafe.takecoffee(price);
		money -= price ;
	}
	public void takeBeanCoffee(BeanCoffee cafe, int price)
	{                                    
		cafe.takecoffee(price);
		money -= price ;
	}
	public void showInfo() {
		System.out.println(name+"님의 남은돈은"+money+"입니다");
	}
}
