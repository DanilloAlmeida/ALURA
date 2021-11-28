public class Gerente extends Funcionario implements Autenticavel{

	private Autenticador autenticador;
	
	public Gerente() {
		this.autenticador = new Autenticador();
	}

	
	public double getBonificacao() {
		return (this.salario * 0.05)+super.salario;
	}

	@Override
	public void setSenha(int senha) {
		this.autenticador.setSenha(senha);		
	}

	@Override
	public boolean autenctica() {
		return this.autenticador.autenctica();
	}
}
