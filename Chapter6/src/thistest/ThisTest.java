package thistest;
class Birthday {
	

	int year;
	int month;
	int day;
	
	public Birthday () {
		//this () : 자신의 생성자를 불러오는 역할
		this(9,11,2023);
		//생성자는 여러번 부를수 없음 this(9,11);
		
		
	}
	public Birthday ( int day , int month ) {
		
		this.day = day;
		this.month = month;
	}
	
	public Birthday (int day, int month , int year){
		//this.멤버변수 : 자기자신 중에 멤버변수를 불러오는 역할
		this.day = day;
		this.month = month;
		this.year = year;
		//this.메서드 : 자신의 안에 있는 메서드를 불러오는 역할
		System.out.println(this.getDay());
		this.setDay(day);
	}
	public Birthday returnItself () {
		return this;
		
	}
	
	public void showBirthDayInfo() {
		System.out.println(year + "/"+ month + "/"+day );
	}
	
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
}

public class ThisTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Birthday kim = new Birthday();
		kim.showBirthDayInfo();
		
		Birthday kim2 = kim;
		kim2.showBirthDayInfo();
		
		kim.setYear(2000);
		
		kim.showBirthDayInfo();
		kim2.showBirthDayInfo();
		
		System.out.println(kim2);
		System.out.println(kim);
	
	
	
	
	
	
	
	
	}

}
