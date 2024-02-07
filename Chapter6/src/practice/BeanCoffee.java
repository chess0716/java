package practice;

class BeanCoffee {
	public String name;
	public int money;
	public String drink;
	
	public BeanCoffee (String name , int money ,String drink) {
		this.name = "콩다방"+ name;
		this.money = money;
		this.drink = drink;
	}

	public void showInfo () {
		System.out.println(name + "씨 가"+money +"를 내고"+ drink+"를 마셨습니다");
	}

	public void takecoffee(int price) {
		if(price == 4000) {
			System.out.println("콩다방에서 아메리카노를 구입했습니다.");
		}
		if (price == 4500) {
			System.out.println("콩다방에서 라떼를 구입했습니다.");
		}
		money +=money;
	}


}