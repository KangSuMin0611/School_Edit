import java.util.Scanner;

public class ArrayExam {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		
		int i = 0;
		int[] arr = new int[5];
		int max = 0;
		int index = 0;
		
		for( i=0; i<arr.length; i++){
			
			System.out.println( (i+1)+"번 입력 :");
			arr[i] = scan.nextInt();
			
			if(max<arr[i]){
				max = arr[i];
				index = i+1;
			}
		}
		System.out.println("가장 큰 수는 "+index+"번째 숫자인 "+ max );
		
		
	}
}
