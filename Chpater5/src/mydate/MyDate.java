package mydate;

public class MyDate {
	//멤버 변수
	private int year;
	private int month;
	private int day;
	private boolean flag;
	private final String FALSE_MESSAGE = "유효하지 않은 날짜입니다";
	private final String True_MESSAGE = "유효한 날짜입니다";

	// TODO Auto-generated constructor stub

	public MyDate(int year, int month, int day) {
		this.year = year;
		this.month = month;
		this.day = day;
	}

	public int getYear() {
		return year;
		
	}
	public void setYear (int year) {
	   
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
	
	public boolean isFlag() {
		return flag;
	}

	public void setFlag(boolean flag) {
		this.flag = flag;
	}


	public String isvalid() {
        if (year < 1 || month < 1 || month > 12 || day < 1 || day > 31) {
            return FALSE_MESSAGE;
        }

       
        if (month == 4 || month == 6 || month == 9 || month == 11) {
            if (day > 30) {
                return FALSE_MESSAGE;
            }
        } else if (month == 2) {
          
            if (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) {
                if (day > 29) {
                    return FALSE_MESSAGE;
                }
            } else {
                if (day > 28) {
                    return FALSE_MESSAGE;
                }
            }
        }

        return True_MESSAGE;
    }

	
	
}