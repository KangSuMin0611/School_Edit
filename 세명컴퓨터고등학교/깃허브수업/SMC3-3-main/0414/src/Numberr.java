import java.util.Random;
import java.util.Scanner;

public class Numberr {

	public static void main(String[] args) {
		
		Random ran = new Random();
		Scanner scan = new Scanner(System.in); //스캐너 생성

		System.out.print("10개의 랜덤 숫자 중 하나를 맞춰보세요(1 ~ 50): ");
		int diff = 0;
		int a = scan.nextInt(); //스캐너 형식 외우기
		int lotto[] = new int[10]; //배열로 로또 자리 만들기
		
		for(int i=0; i<lotto.length; i++){
				lotto[i] = (int)(Math.random()*50+1); // 실수형을 (int)형으로 강제 변환, *마지막숫자 +첫번째숫자
				System.out.print(lotto[i]+" ");	//로또 출력
		}
		
		for(int j = 0; j<10; j++ ){
			if(lotto[j]== a){
				System.out.println("당첨!");
				diff=1;
			}
		}
		if(diff==0){
			System.out.println("꽝 수민아!!!!");
		}
	}
}
