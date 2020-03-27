@isTest
public class TestLanguageCourseTrigger {
    @isTest static void TestInsertLanguageCourse() {
        // Test data setup
        Language_Course__c lc = new Language_Course__c();
        lc.Name = 'Test Course';
        insert lc;
         
    }
    
        @isTest static void TestUpdateLanguageCourse() {
        Language_Course__c ulc = new Language_Course__c();
        ulc.Name = 'Test Course';
        insert ulc;
        Language_Course__c updatedLC = [SELECT Id, Name FROM Language_Course__c where Id=:ulc.ID];
        UpdatedLC.Name = 'Test Language Update';
        update UpdatedLC;
 
    }
        @isTest static void TestDeleteLanguageCourse() {
        Language_Course__c dlc = new Language_Course__c();
        dlc.Name = 'Test Delete Course';
        insert dlc;
        Language_Course__c DeleteLC = [SELECT Id, Name FROM Language_Course__c where Id=:dlc.ID];
        delete DeleteLC;
            
    }
    	
}

