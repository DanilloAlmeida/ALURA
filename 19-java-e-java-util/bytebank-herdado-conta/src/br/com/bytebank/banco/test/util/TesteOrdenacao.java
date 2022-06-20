package br.com.bytebank.banco.test.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import br.com.bytebank.banco.modelo.Cliente;
import br.com.bytebank.banco.modelo.Conta;
import br.com.bytebank.banco.modelo.ContaCorrente;

public class TesteOrdenacao {

	public static void main(String[] args) {
		
		Conta cc1 = new ContaCorrente(01, 44);
		Cliente clienteCC1 = new Cliente();
		clienteCC1.setNome("Nico");
		cc1.setTitular(clienteCC1);		
		cc1.deposita(444.0);
		
		Conta cc2 = new ContaCorrente(01, 22);
		Cliente clienteCC2 = new Cliente();
		clienteCC2.setNome("Guilherme");
		cc2.setTitular(clienteCC2);
		cc2.deposita(222.0);
		
		Conta cc3 = new ContaCorrente(01, 11);
		Cliente clienteCC3 = new Cliente();
		clienteCC3.setNome("Paulo");
		cc3.setTitular(clienteCC3);
		cc3.deposita(111.0);
		
		Conta cc4 = new ContaCorrente(01, 33);
		Cliente clienteCC4 = new Cliente();
		clienteCC4.setNome("Ana");
		cc4.setTitular(clienteCC4);
		cc4.deposita(333.0);
		
		List<Conta> lista = new ArrayList<>();
		lista.add(cc1);
		lista.add(cc2);
		lista.add(cc3);
		lista.add(cc4);
		
		//imprime sem ordenar
		/*
		 * for (Conta conta:lista) { System.out.println(conta); }
		 */
		for (Conta conta:lista) {
			System.out.println(conta + ", " + conta.getTitular().getNome() + ", " + conta.getSaldo());
		}
		System.out.println("------------------ ordenando -----------");
		
		
		ComparaNumeroConta comparador = new ComparaNumeroConta();
//		TitularDaContaComparator titularComparator = new TitularDaContaComparator();
//		lista.sort(titularComparator);
//		lista.sort(comparador);
		
		Collections.sort(lista);
		
		for (Conta conta:lista) {
			System.out.println(conta + ", " + conta.getTitular().getNome() + ", " + conta.getSaldo());
		}
	}
}

class TitularDaContaComparator implements Comparator<Conta>{

	@Override
	public int compare(Conta c1, Conta c2) {
		
		String nomeC1 = c1.getTitular().getNome();
		String nomeC2 = c2.getTitular().getNome();		
		return  nomeC1.compareTo(nomeC2);
	}
}


class ComparaNumeroConta implements Comparator<Conta>{

	@Override
	public int compare(Conta c1, Conta c2) {
		
//		if (c1.getNumero() < c2.getNumero()) {
//			return -1;
//		}		
//		if (c1.getNumero() > c2.getNumero()) {
//			return 1;
//		}		
//		return 0;
		
/* melhoramento 1 */
		
//		return c1.getNumero() - c2.getNumero();
/* melhoramento 2 */
		
		return Integer.compare(c1.getNumero(), c2.getNumero());
	}
}
