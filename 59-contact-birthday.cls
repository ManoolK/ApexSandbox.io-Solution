public Boolean isBirthday(Contact c) {
    Date today = Date.today();
    if (c == null || c.Birthdate == null || c.Birthdate > today) {
        return false;
    }
    if (c.Birthdate.month() == today.month() && c.Birthdate.day() == today.day()) {
        return true;
    }
    return false;
}
