public class FluxoComTratamento {

	public static void main(String[] args) throws MyException{		
		System.out.println("Inicio do main");
//		try {
			metodo1();
//		}catch(MyException ex){
//			String msg = ex.getMessage();
//			System.out.println("Deu merda: "+ msg);
//			ex.printStackTrace();
//		}	
//		}catch(NullPointerException ex){
//			String msg = ex.getMessage();
//			System.out.println("Deu merda!: " + msg);
//			ex.printStackTrace();
//		}
 		
 		System.out.println("Fim do main");
	}
	
	private static void metodo1() throws MyException {
		System.out.println("Inicio do metodo1");
		metodo2();
		System.out.println("fim do metodo1");
	}
	
	private static void metodo2() throws MyException {
		System.out.println("inicio do metodo2");		
//		ArithmeticException ex = new ArithmeticException();
//		throw ex;
		throw new MyException("estou no metodo2, dei um throw");
		//System.out.println("fim do metodo2");
	}
	

}
