trigger TriggerBoi on Account (after insert) {
    list<contact> c = new List <contact>();
    for(Account a: trigger.new){
    	contact con = new contact();
        con.lastname = a.name;
        con.AccountId = a.Id;
        con.phone = a.Phone;
        c.add(con);
        
        }
    insert c;
    }