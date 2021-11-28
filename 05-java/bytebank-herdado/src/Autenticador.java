
public class Autenticador {
	private int senha;
	
	public void setSenha(int senha) {
		this.senha = senha;		
	}

	public boolean autenctica() {
		if (this.senha == 3333) {
			return true;
		}else {
			return false;
		}
		
	}

}
