package reference;

class Subject {
	int subjectNum;
	String subjectTitle;
	String teacherName;
	int score;
	
}


public class Student {
	private int studentID; // 외부클래스 어디서나 다른 패키지에서도 사용가능
	String studentName; // 선언된 클래스 안에서만 사용가능
	private String studentname; // 선언된 클래스안에서만 사용가능
	Subject korea = new Subject();
	Subject math = new Subject();
	Subject en = new Subject();
	Subject java = new Subject();
	private String setStudentName;
	int score; // default : 같은 패키지 안에서만 사용가능
	protected String majorcode; // 상속을 받거나 같은패키지에 있을 경우 사용가능
	public String getStudentname() {
		return studentName;
	
}	// getter AND setter : private 변수를 설정하고 받아오기 위한 메서드
	public void setStudentName (String studentName) {
		if(studentName.length() >50) {
			this.studentName = studentName;
			
		}
		else {
			System.out.println("50글자 넘게 설정할 수 없습니다");
		}
	 
	}
	public static void main(String [] args) {
		Student kim = new Student();
		kim.korea.subjectTitle = "국어";
		kim.math.score = 100;
		System.out.println("kim.korea.subjectTitle");
		kim.setStudentID(1001);
		kim.setSetStudentName(("김유신"));
		kim.score = 100;
		System.out.println(kim.score);
	    
	}
	public String getSetStudentName() {
		return setStudentName;
	}
	public void setSetStudentName(String setStudentName) {
		this.setStudentName = setStudentName;
	}
	public int getStudentID() {
		return studentID;
	}
	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}

}
