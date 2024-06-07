public Boolean sameParent(Account acc, Contact con, Opportunity opp) {
    if (acc.Id == null || con.AccountId == null || opp.AccountId == null) {
        return false;
    }
    Boolean conAcc = acc.Id == con.AccountId;
    Boolean oppAcc = acc.Id == opp.AccountId;
    return conAcc && oppAcc;
}
