package singletone;

public class CompanyTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Company myCompany1 = Company.getInstance();
		Company myCompany2 = Company.getInstance();
		System.out.println(myCompany1);
		System.out.println(myCompany2);
		System.out.println(myCompany1 == myCompany2);
		//Company myCompany3 = new Company();
				
		
		
		
		
		
	}

}
