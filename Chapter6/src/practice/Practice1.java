package practice;

public class Practice1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		1. 아침 출근길에 김씨는 4000원을 내고 별다방에서 아메리카노를 사 마셨습니다. 이씨는 콩
//		다방에서 4500원을 내고 라테를 사 마셨습니다. 학생, 버스, 지하철 실습과 같이 객체간 협력
//		을 이용하여 위의 내용의 코드를 작성하세요.
		
		
		
		StarCoffee kim = new StarCoffee("kim" ,4000 ,"아메리카노");
		System.out.println();
		BeanCoffee lee = new BeanCoffee("lee", 4500 , "라떼");
		System.out.println();
		
		kim.showInfo();
		lee.showInfo();
		
	    
	
	
	}
}