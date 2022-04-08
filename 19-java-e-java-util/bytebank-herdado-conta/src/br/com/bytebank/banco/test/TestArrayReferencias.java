package br.com.bytebank.banco.test;

import br.com.bytebank.banco.modelo.*;

public class TestArrayReferencias {

	public static void main(String[] args) {
	
		ContaCorrente[] contas = new ContaCorrente[5];
		Conta[] contas = new Conta[5];
		
		
		
		
		ContaCorrente cc1 = new ContaCorrente(2727, 001);
		ContaCorrente cc2 = new ContaCorrente(2727, 002);
		contas[0] = cc1;
		contas[1] = cc2;
		
		System.out.println(contas[0].getNumero());		
	}
}
