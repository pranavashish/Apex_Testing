trigger LeadTrigger2 on Lead (before insert, before update) {
    for(Lead LeadRecord : Trigger.new){
        if(String.isBlank(LeadRecord.Rating)){
            LeadRecord.Rating = 'Warm';
        }
    }
    System.debug('Lead Trigger 2');
}