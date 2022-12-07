import java.util.Scanner;

public class ddd {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		
		int a = 0;
		int sum = 0;
		
		int b = 0;
		int c = 0;
		
		System.out.println("500 이하의 자연수를 입력하세요.");
			a = scan.nextInt();
			if(a%3==0){
				b = a;
				sum += b%3;
				System.out.println(b);
			}else if(a%7==0){
				c = a;
				sum += c%7;
				System.out.println(c);
			}
			else if(a>500){
				System.out.println("잘못된 값입니다.");
			}
		System.out.println("1~"+a+"까지 3의 배수이면서 7의 배수인 수의 합은"+ sum + "입니다.");
				
	}

}
