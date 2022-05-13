package br.com.bytebank.banco.test.util;


import java.util.LinkedList;

import br.com.bytebank.banco.modelo.Conta;
import br.com.bytebank.banco.modelo.ContaCorrente;
import br.com.bytebank.banco.modelo.ContaPoupanca;

public class TesteLinkedList {

	public static void main(String[] args) {
		
		LinkedList<Conta> lista = new LinkedList<Conta>();
		
		Conta cc = new ContaCorrente(1001, 1001001);
		lista.add(cc);
		
		Conta cp = new ContaPoupanca(1001, 1001002);
		lista.add(cp);
		
		int tamanho = lista.size();
		System.out.println("Tamanho: " + tamanho);
		
//		Conta ref = (Conta) guardador.getReferencia(1);
//		System.out.println("Agencia: " + ref.getAgencia());
		
		for(Object oRef : lista) {
			System.out.println(oRef);
		}
		Object oRef = lista;
		System.out.println("lista.indexOf(cp): " + lista.indexOf(cp));
		System.out.println("lista.indexOf(cc): " + lista.indexOf(cc));
		System.out.println("lista.lastIndexOf(oRef): " + lista.lastIndexOf(oRef));
		
	}

}
