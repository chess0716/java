package practice2;



public class CardCompanyTest {
	public static void main(String[] args) { 
		
		CardCompany Card =  CardCompany.getInstance();
		
		for (int i= 100; i<200; i++) {
			Card card = CardCompany.creatCard();
			card.showInfo();
		}
	}
}
