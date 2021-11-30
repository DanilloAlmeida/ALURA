
public class TestaContaComExcecaoChecked {

	public static void main(String[] args) {
		System.out.println("passei aqui");
		Conta c = new Conta();
		try {
			c.deposita();
		}catch (MinhaExcecao ex) {
			System.out.println("tratando no catch");
		}

	}

}
