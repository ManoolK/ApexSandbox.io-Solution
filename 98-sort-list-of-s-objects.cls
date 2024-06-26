public List<Account> getAccounts(List<Account> accounts) {
    if (accounts == null) return null;
    List<accountWrapper> accWrappers = new List<AccountWrapper>();
    for (Account acc : accounts) {
        accWrappers.add(new AccountWrapper(acc));
    }
    accWrappers.sort();
    List<Account> sortedAcc = new List<Account>();
    for (accountWrapper aw : accWrappers) {
        sortedAcc.add(aw.account);
    }
    return sortedAcc;
}
// write extra class here 
public class AccountWrapper implements Comparable {
    public Account account;
    public Decimal annualRevenue;
    
    public AccountWrapper(Account acc) {
        if (acc == null) {
            Exception ex = new NullPointerException();
            ex.setMessage('Account argument cannot be null');
            throw ex;
        }
        account = acc;
        annualRevenue = acc.AnnualRevenue;
    }
    
    public Integer compareTo(Object compareTo) {
        AccountWrapper compareToAcc = (AccountWrapper)compareTo;
        if ((annualRevenue == null) && (compareToAcc.annualRevenue == null)) {
            return 0;
        } else if ((annualRevenue == null) && (compareToAcc.annualRevenue != null)) {
            return 1;
        } else if ((annualRevenue != null) && (compareToAcc.annualRevenue == null)) {
            return -1;
        } else if (annualRevenue == compareToAcc.annualRevenue) {
            return 0;
        } else if (annualRevenue > compareToAcc.annualRevenue) {
            return -1;
        } else {
            return 1;
        }
    }
}
