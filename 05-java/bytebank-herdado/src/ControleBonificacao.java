
public class ControleBonificacao {
	
	private double soma;
	
	public void registra(Gerente g) {
		this.soma += g.getBonificacao();
	}
	
	public void registra(Funcionario f) {
		this.soma += f.getBonificacao();
	}	
	
	public double getSoma() {
		return soma;
	}
}
