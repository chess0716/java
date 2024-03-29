package array;

import java.util.Arrays;

public class BookCopyTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Book [] books1 = new Book [3];
		books1[0] = new Book ("태백산맥","조정래");
		books1[1] = new Book ("데미안","헤르만헤세")	;	
		books1[2] = new Book ("어떻게살 것인가","유시민");
		
		Book[] books2 = new Book[3];
		//메모리 주소만복사 : 얕은 복사
		System.arraycopy(books1,0,books2,0,3);
		
		for (int i=0; i<books2.length; i++) {
			books1[i].showInfo();
			books2[i].showInfo();
		}
		System.out.println(Arrays.toString(books1)); // 객체의경우 메모리주소변환
		System.out.println(Arrays.toString(books2)); //객체는 확인불가
		
		books2[0].setBookName("토지");
		books2[0].setAuthor("박경리");
		
		for (int i=0; i<books2.length; i++) {
			books1[i].showInfo();
			books2[i].showInfo();
		}
		
		
		
		
		
	}

}
