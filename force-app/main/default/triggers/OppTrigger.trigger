trigger OppTrigger on Opportunity (after insert) {
	
    for(Opportunity Opp: trigger.new){
        if(Opp.Amount < 500){
            Opp.addError('YO YO');
        } 
    }
    
}