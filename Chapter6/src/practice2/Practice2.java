package practice2;



public class Practice2 {
	public static void main(String[] args) { 
//		2. 카드 회사에서 카드를 발급할 때마다 카드 고유 번호를 부여해 줍니다. 학번 자동 생성하
//		기 실습과 같이 카드가 생설될 때 카드번호가 자동으로 증가할 수 있도록 카드 클래스를 만들
//		고 생성해 보세요.
//	
		
		for(int i=1000; i<9999; i++) {
			Card card = new Card();
			System.out.println("카드의고유번호는"+card.CardNum+"입니다.");
			card.showInfo();
			
		}
		
		
		
	}
}

