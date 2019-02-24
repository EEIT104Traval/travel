package model.ticket;

public class Test {

	public static void main(String[] args) {
		
	
		
		int sum = 2025;
		int total =0;
		int a;
		double x;
		
		x = (double) Math.sqrt(sum);
		if((x%1) == 0) {
			a = (int) (x*2);
			int b = 0;
			while(total <= a) {
				b++;
				total += b;
			}
			System.out.println(b);
		}else {
			System.out.println(-1);
		}
			
	}
}
