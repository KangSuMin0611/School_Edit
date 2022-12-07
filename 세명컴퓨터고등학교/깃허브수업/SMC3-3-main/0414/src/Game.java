import java.util.Random;
import java.util.Scanner;

public class Game {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		Random ran = new Random();
		
		System.out.println("1:가위, 2:바위, 3:보");
		int a = scan.nextInt();
		int arr;
		
		for(int i=0; i<3;i++){
			arr = (int) (Math.random()*3+1);
			}
		
	}
	
	public static void game(int user, int com){
		switch(user-com){
			
		}
	}

}
