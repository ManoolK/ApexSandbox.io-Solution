public List<apxio__Student__c> selectActiveStudents() {
    List<apxio__Student__c> students = [SELECT Id, Name 
                                        FROM apxio__Student__c 
                                        WHERE apxio__Active__c = true];
    return students;
}
