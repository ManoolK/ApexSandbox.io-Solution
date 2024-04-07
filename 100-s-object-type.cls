public Boolean isTypeAccount(sObject record)
{
    if (record == null) return false;
    if (record.getSObjectType() == Schema.Account.getSObjectType()) {
        return true;
    }
    return false;
}
