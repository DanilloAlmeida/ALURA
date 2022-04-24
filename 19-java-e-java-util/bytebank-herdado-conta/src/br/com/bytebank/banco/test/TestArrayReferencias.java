package br.com.bytebank.banco.test;

import br.com.bytebank.banco.modelo.*;

public class TestArrayReferencias {

	public static void main(String[] args) {
	
//		ContaCorrente[] contas = new ContaCorrente[5];
		Conta[] contas = new Conta[5];
		
		ContaCorrente cc1 = new ContaCorrente(2727, 001);
		ContaCorrente cc2 = new ContaCorrente(2727, 002);
		contas[0] = cc1;
		contas[1] = cc2;
		System.out.println("acessando diretamente");
		System.out.println(contas[0].getAgencia());		
		System.out.println(contas[1].getNumero());
		
		ContaCorrente ref = (ContaCorrente) contas[0];
		System.out.println("\n\n acessando ref");
		System.out.println(ref.getAgencia());		
		System.out.println(ref.getNumero());		

		ContaPoupanca cp1 = new ContaPoupanca(2727, 13001);
		contas[2]= cp1;
		
		Conta ref2 = contas[2];
		System.out.println("\n\n acessando ref");
		System.out.println(ref2.getAgencia());
		System.out.println(ref2.getNumero());
	}
}
