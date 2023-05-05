trigger ContactTrigger on Contact (after insert, after update, after delete, after undelete) {
    switch on Trigger.operationType {
        when AFTER_INSERT {

            for(Contact con : Trigger.new){
                if(String.isBlank(con.AccountId)){

                    //write automation logic here   
            
                String accountId = con.AccountId;
                List <AggregatedResult> results = [SELECT AccountId, COUNT(id) FROM Contact WHERE Active__c = true AND AccountId =: accountId GROUP BY AccountId] ;
                for (AggregatedResult result : results) {
                        //get acc id and number
                    String accountId = String.valueOf(result.get('AccountId'));
                    Integer totalContacts = Integer.valueOf(result.get('totalContacts'));
                    }
            
                }
             }
            
        }
    }
}
