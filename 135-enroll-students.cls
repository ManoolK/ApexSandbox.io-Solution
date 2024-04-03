public void enrollStudents(List<String> emails, String className) {
    List<apxio__Class_Enrollment__c> classEnrolments = new List<apxio__Class_Enrollment__c>();
    // Get the Class record by Name
    List<apxio__Class__c> classes = [SELECT Id 
                                     FROM apxio__Class__c 
                                     WHERE Name = :className];
    apxio__Class__c ourClass = classes.get(0);
    // Get all Students by Emails
    List<apxio__Student__c> students = [SELECT Id 
                                        FROM apxio__Student__c 
                                        WHERE apxio__Student__c.apxio__Email__c IN :emails];
    // Create Class Enrollments records
    for (apxio__Student__c student : students) {
        apxio__Class_Enrollment__c oneEnrollment = new apxio__Class_Enrollment__c();
        oneEnrollment.apxio__Student__c = student.Id;
        oneEnrollment.apxio__Offered_Class__c = ourClass.Id;
        classEnrolments.add(oneEnrollment);
    }
    Database.insert(classEnrolments, false);
}
