public class loginnpage{

    public PageReference search() {
        return null;
    }



string keyword;
list<job_application__c> results;

public string uid{set;get;}
public string pid{set;get;}
public string sta{set;get;}

public string getkeyword(){
return keyword;
}
public list<job_application__c> getresults(){
return results;
}

public void signin(){
if(uid =='sai'&& pid =='chaitu') {
     sta = 'login successfull... loadingpage....';
     
            apexpages.message mymsg = new apexpages.message(apexpages.severity.confirm , 'login successfull..');
            apexpages.addmessage(mymsg);
            }
     else {
    
     sta = 'invalid user'  ;
     
     
     apexpages.message msg = new apexpages.message( apexpages.severity.error, 'Invalid user...');  
         apexpages.addmessage(msg);    
         }
}
public void setkeyword(string input){
keyword = input;
}

public pagereference signinpage(){
return page.signinpage;
}
public pagereference registerpage(){
return page.registerpage;
}
public  pagereference detailpage(){
return page.detailpage;
}
/*public pagereference search(){
results = (list<job_application__c>)[FIND :keyword  RETURNING job_application__c(position__c)][0];
return null;
}*/


}