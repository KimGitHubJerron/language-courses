trigger LanguageCourseTrigger on Language_Course__c (after insert, after update, after delete) {
if (Trigger.isInsert) {
        
        //Process after insert
        EmailManager.sendMail('kimsueh@gmail.com', 'A New Language Course has been Added', 
                    'New Course Addition');
    }
        //

    else if(Trigger.isUpdate){
        //Process after update
        EmailManager.sendMail('kimsueh@gmail.com', 'A Language Course has been updated.', 
                    'Updated Language Course.');
    }

    else if (Trigger.isDelete) {
        //Process after delete
        EmailManager.sendMail('kimsueh@gmail.com', 'A Language Course Has been deleted.', 
                    'A Language course has been deleted.');
        
    }
}