public List<Account> getAccountsFromJSONString(String inputJSON){
    if (String.isBlank(inputJSON)) return null;
    List<Account> result = (List<Account>) JSON.deserialize(inputJSON, Type.forName('List<Account>'));
    return result;
}
