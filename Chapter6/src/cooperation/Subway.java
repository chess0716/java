package cooperation;

public class Subway {
	public	int subwayLineNumber;
	 public int passengerCount;
	 public int money;
	 
	 public Subway (int subwayLineNumber) {
		 this.subwayLineNumber= subwayLineNumber;
	 }
	 
	 public void take (int money) {
		 this.money += money;
		 passengerCount++;
	 }
	 
	 public void showInfo() {
		 System.out.println("지하철"+subwayLineNumber+"번의 승객은"+passengerCount+ 
				 "명이고, 수입은 "+money+"입니다");
	 }
}
