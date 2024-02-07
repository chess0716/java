package practice2;


public class CardCompany {
	private static int serialNum = 10000;
	private static CardCompany instance = new CardCompany();
	private CardCompany() { 
		
	}
	
	public static CardCompany getInstance() {
		if(instance == null) {
			instance = new CardCompany();
		}
		return instance;
}
	public static Card creatCard () {
		setSerialNum(getSerialNum() + 1);
		Card card = new Card();
		return card;
		
	}

	public static int getSerialNum() {
		return serialNum;
	}

	public static void setSerialNum(int serialNum) {
		CardCompany.serialNum = serialNum;
	}

	

	

	




}
