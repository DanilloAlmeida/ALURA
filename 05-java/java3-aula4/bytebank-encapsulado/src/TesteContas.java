public class TesteContas {

	public static void main(String[] args) {
		
		ContaCorrente cc = new ContaCorrente(0001, 1234);		
		cc.deposita(200.0);
		System.out.println("Saldo...:"+cc.getSaldo());	
		System.out.println("Agencia.:"+cc.getAgencia());
		
		ContaPoupanca cp = new ContaPoupanca(0002, 1234);
		cp.deposita(500.0);
		System.out.println("");
		System.out.println("Saldo...:"+cp.getSaldo());	
		System.out.println("Agencia.:"+cp.getAgencia());
		
		//System.out.println("o total de contas sao : " + Conta.getTotal());
		
		cc.transfere(10.00, cp);
		System.out.println("\nTransferindo.... da agencia "+cc.getAgencia()+" para"
				+ " agencia "+cp.getAgencia()+"\n");
		System.out.println("Saldo...:"+cc.getSaldo());	
		System.out.println("Agencia.:"+cc.getAgencia());
		System.out.println("");
		System.out.println("Saldo...:"+cp.getSaldo());	
		System.out.println("Agencia.:"+cp.getAgencia());
		
		cc.transfere(10.00, cp);
		System.out.println("\nTransferindo.... da agencia "+cc.getAgencia()+" para"
				+ " agencia "+cp.getAgencia()+"\n");
		System.out.println("Saldo...:"+cc.getSaldo());	
		System.out.println("Agencia.:"+cc.getAgencia());
		System.out.println("");
		System.out.println("Saldo...:"+cp.getSaldo());	
		System.out.println("Agencia.:"+cp.getAgencia());
	}
	
}
