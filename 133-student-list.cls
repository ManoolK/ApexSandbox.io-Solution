public void insertStudents(List<String> studentNames, List<String> studentEmails) {
    List<apxio__Student__c> students = new List<apxio__Student__c>();
    for (String stName : studentNames) {
        apxio__Student__c student = new apxio__Student__c();
        student.Name = stName;
        Integer index = studentNames.indexOf(stName);
        student.apxio__Email__c = studentEmails.get(index);
        students.add(student);
    }
    insert students;
} 
