
public class Administrador extends Funcionario implements Autenticavel{

	private Autenticador autenticador;
	
	public Administrador() {
		this.autenticador = new Autenticador();
	}
	
	
	
	@Override
	public double getBonificacao() {
		// TODO Auto-generated method stub
		return 300;
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