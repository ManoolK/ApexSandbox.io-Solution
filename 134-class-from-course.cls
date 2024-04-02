public Id classFromCourse(String courseName) {
    List<apxio__Course__c> courses = [SELECT Id, Name
                                      FROM apxio__Course__c
                                      WHERE Name = :courseName
                                      LIMIT 1];
    if (courses.size() > 0) {
        apxio__Class__c newClass = new apxio__Class__c();
    	newClass.Name = courseName;
    	newClass.apxio__Course__c = courses.get(0).Id;
        insert newClass;
        return newClass.Id;
    }
    return null;
}
