
public class TestaFuncionario {

	public static void main(String[] args) {
		
//		Funcionario nico = new Funcionario();
//		nico.setNome("Nico Steppat");
//		nico.setCpf("12311232132");
//		nico.setSalrario(2000.00);
		
		ControleBonificacao controle = new ControleBonificacao();
		
		
//******testa classe gerente
		Gerente gerente = new Gerente();
		gerente.setNome("Ernesto");
		gerente.setCpf("123456");
		gerente.setCargo("gerente");
		gerente.setSalrario(5000.00);
		gerente.setSenha(123456);		
		controle.registra(gerente);		
		System.out.println("Nome..............: "+gerente.getNome());
		System.out.println("CPF...............: "+gerente.getCpf());
		System.out.println("Cargo.............: "+gerente.getCargo());
		System.out.println("Salario...........: "+gerente.getSalrario());
		System.out.println("Validacao da senha: "+gerente.autenctica());
		System.out.println("Bonificacao.......: "+gerente.getBonificacao());
		System.out.println("");
		System.out.println("Bonificacao total.: "+controle.getSoma());
		
//******testa classe Administrador		
		//cria e imprime administrador
		
		Administrador adm1 = new Administrador();
		adm1.setNome("Sergio");
		adm1.setCpf("3333");
		adm1.setCargo("administrador");
		adm1.setSalrario(5000.00);
		adm1.setSenha(3333);		
		controle.registra(adm1);
		System.out.println("");
		System.out.println("Nome..............: "+adm1.getNome());
		System.out.println("CPF...............: "+adm1.getCpf());
		System.out.println("Cargo.............: "+adm1.getCargo());
		System.out.println("Salario...........: "+adm1.getSalrario());
		System.out.println("Validacao da senha: "+adm1.autenctica());
		System.out.println("Bonificacao.......: "+adm1.getBonificacao());
		System.out.println("");
		System.out.println("Bonificacao total.: "+controle.getSoma());
		
//******testa classe EditorVideo			
		EditorVideo ed1 = new EditorVideo();
		ed1.setNome("Tiago");
		ed1.setCpf("123457");
		ed1.setCargo("editor de video");
		ed1.setSalrario(5000.00);
		controle.registra(ed1);
		System.out.println("");
		System.out.println("Nome..............: "+ed1.getNome());
		System.out.println("CPF...............: "+ed1.getCpf());
		System.out.println("Cargo.............: "+ed1.getCargo());
		System.out.println("Salario...........: "+ed1.getSalrario());
		System.out.println("Bonificacao.......: "+ed1.getBonificacao());	
		System.out.println("");
		System.out.println("Bonificacao total.: "+controle.getSoma());
		
//******testa classe Designer			
		Designer ds1 = new Designer();
		ds1.setNome("Danillo");
		ds1.setCpf("123458");
		ds1.setCargo("designer");
		ds1.setSalrario(4000.00);
		controle.registra(ds1);
		System.out.println("");
		System.out.println("Nome..............: "+ds1.getNome());
		System.out.println("CPF...............: "+ds1.getCpf());
		System.out.println("Cargo.............: "+ds1.getCargo());
		System.out.println("Salario...........: "+ds1.getSalrario());
		System.out.println("Bonificacao.......: "+ds1.getBonificacao());	
		System.out.println("");
		System.out.println("Bonificacao total.: "+controle.getSoma());
		
//******testa classe Cliente	
		Cliente cl1 = new Cliente();
		cl1.setSenha(3333);
		System.out.println("teste classe cliente");
		System.out.println("Validacao da senha: "+cl1.autenctica());
		System.out.println("");
	}
}