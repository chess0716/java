package practice2;

public class Card {
	
	public static int cardNum = 1000;
	public String Card;
	public int CardNum;
	
	public Card () {
		cardNum++;
		CardNum = cardNum;
		
	}
	public Card (int companySerialNum) {
		cardNum = companySerialNum;
	}
	public void showInfo() {
		System.out.println("카드고유번호는" +cardNum);
		
	}
}	
