package br.com.bytebank.banco.test;

import br.com.bytebank.banco.modelo.GuardadorDeContas;
import br.com.bytebank.banco.modelo.Conta;
import br.com.bytebank.banco.modelo.ContaCorrente;


public class TestaGuardador {

	public static void main(String[] args) {
		
		GuardadorDeContas guardador = new GuardadorDeContas();
		
		Conta cc01 = new ContaCorrente(10, 10001);
		guardador.adiciona(cc01);
		
		Conta cc02 = new ContaCorrente(111, 10002);
		guardador.adiciona(cc02);
		
		int qtdContas = guardador.getQuantidade();
		System.out.println(qtdContas);
		
		Conta ref = guardador.getReferencia(0);
		System.out.println(ref.getNumero());
		System.out.println(ref.getAgencia());
		
		Conta ref2 = guardador.getReferencia(1);
		System.out.println(ref2.getNumero());
		System.out.println(ref2.getAgencia());
	}
}
