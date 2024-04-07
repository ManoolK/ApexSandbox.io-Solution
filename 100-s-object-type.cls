public Boolean isTypeAccount(sObject record)
{
    if (record?.getSObjectType() == Schema.Account.getSObjectType()) {
        return true;
    }
    return false;
}
