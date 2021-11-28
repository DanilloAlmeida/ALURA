public class Fluxo {

	public static void main(String[] args) {		
		System.out.println("Inicio do main");
		try {
			metodo1();
		}catch(ArithmeticException ex){
			String msg = ex.getMessage();
			System.out.println("Deu merda main: "
					+ msg);
			ex.printStackTrace();
		}catch(NullPointerException ex){
			String msg = ex.getMessage();
			System.out.println("Deu merda main: "
					+ msg);
			ex.printStackTrace();
		}
 		
 		System.out.println("Fim do main");
	}
	
	private static void metodo1(){
		System.out.println("Inicio do metodo1");
//		try {
			metodo2();
//		}catch(ArithmeticException ex) {
//			System.out.println("Deu merda metodo2");
//		}
		
		System.out.println("fim do metodo1");
	}
	
	private static void metodo2() {
		System.out.println("inicio do metodo2");
		for(int i=0; i<6; i++) {
			System.out.println(i);
//			int a = i/0;
			Conta c =null;
			c.deposita();
//			try {
//				int a = i/i;
//			}catch(ArithmeticException ex) {
//				System.out.println("Deu merda!");
//			}
			
		}
		System.out.println("fim do metodo2");
	}
	

}
