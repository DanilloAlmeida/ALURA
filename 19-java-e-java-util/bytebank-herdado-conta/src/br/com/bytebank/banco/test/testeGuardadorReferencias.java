package br.com.bytebank.banco.test;

import br.com.bytebank.banco.modelo.Conta;
import br.com.bytebank.banco.modelo.ContaCorrente;
import br.com.bytebank.banco.modelo.ContaPoupanca;
import br.com.bytebank.banco.modelo.GuardadorDeReferencias;

public class testeGuardadorReferencias {

	public static void main(String[] args) {
		
		GuardadorDeReferencias guardador = new GuardadorDeReferencias();
		
		Conta cc = new ContaCorrente(1001, 1001001);
		guardador.adiciona(cc);
		
		Conta cp = new ContaPoupanca(1001, 1001002);
		guardador.adiciona(cp);
		
		int tamanho = guardador.getQuantidadeDeElementos();
		System.out.println(tamanho);
		
		Conta ref = (Conta) guardador.getReferencia(1);
		System.out.println("Agencia: " + ref.getAgencia());
		System.out.println("Numero: " + ref.getNumero());

	}

}
