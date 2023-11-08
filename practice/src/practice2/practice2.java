package practice2;

public class practice2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// Q1
		for (int i = 2; i <= 9; i += 2) {
			System.out.println(i + "단");
			for (int j = 1; j <= 9; j++) {
				System.out.println(i + "*" + j + "=" + i * j);
			}
		}
		for (int i = 2; i <= 9; i += 2) {
			if(i%2 == 0) {
				System.out.println(i + "단");
				for (int j = 1; j <= 9; j++) {
					System.out.println(i + "*" + j + "=" + i * j);
				}
			}
		}
		for (int i = 2; i <= 9; i += 2) {
			if(i%2 != 0) {
				continue;
			}
			System.out.println(i + "단");
			for (int j = 1; j <= 9; j++) {
				System.out.println(i + "*" + j + "=" + i * j);
			}
		}
		System.out.println();
		// Q2
		for (int i = 2; i <= 9; i++) {
			System.out.println(i + "단");
			for (int j = 1; j <= 9; j++) {
				if(j>i) {
					break;
				}
				System.out.println(i + "*" + j + "=" + i * j);
			}
		}
		for (int i = 2; i <= 9; i++) {
			System.out.println(i + "단");
			for (int j = 1; j <= i; j++) {
				System.out.println(i + "*" + j + "=" + i * j);
			}
		}
		//Q3
		for (int i=0; i<5; i++) {
			for (int j=0; j<=i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		System.out.println();
		//Q4
		for (int i=5; i>0; i--) {
			for (int j=0; j<i; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
	}

}





