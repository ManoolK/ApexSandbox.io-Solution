public List<sObject> getListOfsObject(List<Account> accounts, List<Contact> contacts)
{
    List<sObject> sobj = new List<sObject>();
    if (accounts != null) {
        for (sObject acc : accounts) {
        	sobj.add(acc);
    	}
    }
    if (contacts != null) {
    	for (sObject cont : contacts) {
        	sobj.add(cont);
    	}
    }
    return sobj;
}
