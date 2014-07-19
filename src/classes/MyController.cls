public class MyController {

     private final String account;

    public MyController() {
        account = 'MyAccount';
    }

    public String getAccount() {
        return account;
    }

    public PageReference save() {
        return null;
    }
}