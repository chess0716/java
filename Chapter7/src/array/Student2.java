package array;

public class Student2 {
	private int studentID;
	private String studentName;
	
	public Student2 (int studentID , String studentName) {
		this.studentID = studentID;
		this.studentName = studentName;
		
	}

	protected int getStudentID() {
		return studentID;
	}

	protected void setStudentID(int studentID) {
		this.studentID = studentID;
	}

	protected String getStudentName() {
		return studentName;
	}

	protected void setStudentName(String studentName) {
		this.studentName = studentName;
	}
		
	public void showInfo( ) {
		System.out.println(studentID+","+studentName);
	}
		
		
	
}
