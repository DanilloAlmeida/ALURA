
public class TesteTributaveis {

	public static void main(String[] args) {
		ContaCorrente cc = new ContaCorrente(001, 15015);
		cc.deposita(100);

		SeguroDeVida seguro = new SeguroDeVida();
		
		CalculadorImposto calculador = new CalculadorImposto();
		calculador.registra(seguro);
		calculador.registra(cc);
		
		System.out.println(calculador.getValorImposto());
	}

}
