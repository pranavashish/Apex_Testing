trigger LeadTrigger on Lead (before insert, before update, after update) {
		SYstem.debug('Lead Trigger Called');
    for(Lead leadRecord : Trigger.new){
        //if(String.isBlank(leadRecord.LeadSource)){
        leadRecord.LeadSource = 'Other';
      //  }
        if(String.isBlank(leadRecord.Industry) && Trigger.isInsert){
            leadRecord.addError('Khali hai');
        }
        }
     System.debug('Lead Trigger 1');
        }