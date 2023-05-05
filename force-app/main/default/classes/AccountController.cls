public class AccountController {
    public static List<Account> insertAccounts(list<Account>accountToInsert){
        insert accountToInsert;
       	return accountToInsert;

    }
   // Insert an account record
    public static Account insertAccount(Account accountToInsert){
        insert accountToInsert;
        return accountToInsert;
    }

    
    public static List<Account> getAllAccounts(){
		// Retrieve Acc
		List<Account> accounts = [SELECT Name, Phone FROM Account];
        return accounts;

            }
    
        public static void printAllAccounts(){
		// Retrieve Acc
		List<Account> accounts = getAllAccounts();
            for(Account account : accounts){
				System.debug('Name = ' + account.name + ' Phone = ' + account.phone);
            	}

            }
    
    public static Integer getAccountSize(){
        List<Account> accounts = getAllAccounts();
        Integer AccSize = accounts.size();
        return AccSize;
    }
}