package br.com.bytebank.banco.teste;

import br.com.bytebank.banco.modelo.ContaCorrente;
import br.com.bytebank.banco.modelo.ContaPoupanca;

public class Teste {

	public static void main(String[] args) {
		ContaPoupanca cp = new ContaPoupanca(2222, 22222);
		ContaCorrente cc = new ContaCorrente(3333, 33333);
		
		
		System.out.println(cc);
		System.out.println(cp);
	}

}
