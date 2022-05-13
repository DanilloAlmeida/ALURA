package br.com.bytebank.banco.test.util;

import java.util.ArrayList;

import br.com.bytebank.banco.modelo.Conta;
import br.com.bytebank.banco.modelo.ContaCorrente;
import br.com.bytebank.banco.modelo.ContaPoupanca;

public class TesteArrayListEquals {

	public static void main(String[] args) {
		
		//Generics
		ArrayList<Conta> lista = new ArrayList<Conta>();
		
		Conta cc1 = new ContaCorrente(1001, 1001001);
		lista.add(cc1);
		
		Conta cc2 = new ContaCorrente(1001, 1001002);
		lista.add(cc2);
		
		Conta cc3 = new ContaCorrente(1001, 1001001);
		lista.add(cc3);
		
		System.out.println(cc1.equals(cc3));
		System.out.println(cc1.equals(cc2));
//		
		System.out.println(lista.contains(cc1));
		System.out.println(lista.contains(cc2));
		System.out.println(lista.contains(cc3));
//		
//		for(Object oRef : lista) {
//			System.out.println(oRef);
//		}
	}
}
