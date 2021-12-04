
public class TestaConexao {

	public static void main(String[] args) {
		
		try (Conexao conexao = new Conexao()){
			conexao.leDados();
		}catch (IllegalStateException ex) {
			System.out.println("Deu erro!");
		}
		
		
//		Conexao con = null;		
//		try {
//			con = new Conexao();
//			con.leDados();
//		}catch(IllegalStateException ex) {
//			System.out.println("deu erro em leDados: ");
//		}finally {
//			System.out.println("finally");
//			con.fecha();
//		}
	}
}
