package br.com.bytebank.banco.test;

public class Teste {
	public static void main (String[] args) {
		int[] idades = new int [5];
//		System.out.println(idades[0]);
		
//		idades [0] = 29;
//		idades [1] = 39;
//		idades [2] = 49;
//		idades [3] = 59;
//		idades [4] = 69;
//		
//		System.out.println(idades.length);
		for (int i =0; i <idades.length; i++) {
			idades[i] = i*i;
		}
		for (int i =0; i <idades.length; i++) {
			System.out.println(idades[i]);
		}		
	}
}