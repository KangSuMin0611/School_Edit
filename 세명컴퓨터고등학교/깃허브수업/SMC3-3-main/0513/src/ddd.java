import java.util.Scanner;

public class ddd {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		
		int a = 0;
		int sum = 0;
		
		int b = 0;
		int c = 0;
		
		System.out.println("500 ������ �ڿ����� �Է��ϼ���.");
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
				System.out.println("�߸��� ���Դϴ�.");
			}
		System.out.println("1~"+a+"���� 3�� ����̸鼭 7�� ����� ���� ����"+ sum + "�Դϴ�.");
				
	}

}
