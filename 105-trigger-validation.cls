public void validateInsert(List<Opportunity> opportunities){
    for (Opportunity opp : opportunities) {
        if (opp.StageName == 'Closed Won' && String.isBlank(opp.Description)) {
            opp.addError('Description', 'Description should not be empty for Closed Won opportunity.');
        }
    }
}
