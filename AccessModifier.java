class Account {
	public String name; //public
	int accountNum; //default
	protected String email;
	private String password;
	
	public String getPassword() {
		return this.password;
	}
	
	public void setPassword(String pass) {
		this.password = pass;
	}
	
}

public class AccessModifier {

	public static void main(String[] args) {
		// 
		Account acc1 = new Account();
		acc1.name = "Simran";
		acc1.email = "sc@gmail.com";
		acc1.setPassword("abd");
		System.out.println(acc1.getPassword());
	}

}
