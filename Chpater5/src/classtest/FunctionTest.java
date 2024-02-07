package classtest;

import com.sun.jdi.Value;

public class FunctionTest {
	//1부터 파라미터로 받아온 값까지 더해주는 메서드 를 작성해주세요
	int fac (int value) {
		
		int result = 0;
		for (int i =0; i<=value;i++) {
			result+= i;
		}
			 
		
		return result;
	}
	//+-*/ 사칙연산을 실행하는 메서드 작성
	
	 int add (int x, int y ) {
			int result = x+y;
			return result;
		  
		    
		 } 
	 
	 int minus (int x, int y ) {
		 int result = x-y;
		 return result ;
	 }
	 
    int multifly ( int x, int y){
    	int result = x*y;
    	return result ;
    	
     }
    int division ( int x , int y ) {
    	int result = x/y ;
    	return result ;
    }
      
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
    FunctionTest ft = new FunctionTest();
    System.out.println(ft.fac(10));
	System.out.println(ft.add(50,100));
	System.out.println(ft.minus(100,50));
	System.out.println(ft.multifly(5,5));
	System.out.println(ft.division(10,2));
		
	}

}
