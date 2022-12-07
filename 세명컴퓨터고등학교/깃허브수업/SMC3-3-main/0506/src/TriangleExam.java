
public class TriangleExam {

	public static void main(String[] args) {
		
		Triangle tr = new Triangle(10.2, 17.3);
		System.out.println("삼각형의 넓이: " + tr.getArea());
		tr.setSize(7.5, 9.3);
		System.out.println("삼각형의 넓이: " + tr.getArea());
	}
}

class Triangle {
	double he;
	double wi;
	
	public Triangle (double he, double wi){
		this.he = he;
		this.wi = wi;
	}
	public void setSize(double he, double wi){
		this.he = he;
		this.wi = wi;
	}	
	public double getArea(){
		return he*wi/2;
	}
}
