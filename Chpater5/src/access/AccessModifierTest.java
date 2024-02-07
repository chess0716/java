package access;



public class AccessModifierTest {
	 public static void main (String[]args) {
		
		 
	 }
	 public class Student {
			int studentID; // 외부클래스 어디서나 다른 패키지에서도 사용가능
			String studentName; // 선언된 클래스 안에서만 사용가능
			private String studentname; // 선언된 클래스안에서만 사용가능
			
			private String setStudentName;
			int score; // default : 같은 패키지 안에서만 사용가능
			protected String majorcode; // 상속을 받거나 같은패키지에 있을 경우 사용가능
			public String getStudentname() {
				return studentName;
			
		}	// getter AND setter : private 변수를 설정하고 받아오기 위한 메서드
	 }
}
