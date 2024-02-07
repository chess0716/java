package array;

public class StudentTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// student 클래스를 만들고 멤버 변수로 studentID , studentName을 선언합니다	
		// StudentArr 배열에 1001,tomas 1002,James 1003,Edword를 
		// 저장하고 출력하는 프로그램을 만들어 보세요 
		
		Student2[] students = new Student2[3];
		
		students[0] = new Student2 (1001,"tomas") ;
		students[1] = new Student2 (1002,"james") ;
		students[2] = new Student2 (1003,"edward") ;
		
		for (int i=0; i<students.length; i++) {
			students[i].showInfo();
		}
		
	}
}
