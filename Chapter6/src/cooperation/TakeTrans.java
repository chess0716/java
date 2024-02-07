package cooperation;

public class TakeTrans {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 택시 클래스 추가하기
		// Edward 학생이 택시를 타게되었습니다 . 택시 요금은 10000원 입니다. 에드워드의 소지금은 15000원
		// 위의 과정을 실행하기 위한 코드를 작성해보세요.
		// 
		Student edword = new Student ("edword", 15000);
		Student james = new Student("james", 5000);
		Student tomas = new Student("tomas", 10000);
		
		Bus bus100 = new Bus (100);
		james.takeBus(bus100);
		james.showInfo();
		bus100.showInfo();
		
		Subway subwayGreen = new Subway(2);
		tomas.takeSubway(subwayGreen);
		tomas.showInfo();
		subwayGreen.showInfo();
		
		Taxi taxi4587 = new Taxi (4587);
		edword.takeTaxi(taxi4587);
		edword.showInfo();
		taxi4587.showInfo();
		
		
	}

}
