package br.com.bytebank.banco.test.util;

public class TesteOutrosWrappers {

	public static void main(String[] args) {
		
		Integer idadeRef = Integer.valueOf(29); 	// autoboxing
		System.out.println(idadeRef.intValue());	// unboxing
		
		Double dRef = Double.valueOf(3.2); 		// autoboxing
		System.out.println(dRef.doubleValue());	// unboxing
		
		Integer iParseado1 = Integer.valueOf("42");
		int iParseado2 = Integer.parseInt("44");
		
		System.out.println(iParseado1);
		System.out.println(iParseado2);
		
		System.out.println(Integer.MAX_VALUE);
		System.out.println(Integer.MIN_VALUE);
		System.out.println(Integer.SIZE);
		System.out.println(Integer.BYTES);
	}

}
