public class Ac1{

List<account>acts = [select Name, Type ,Phone,Fax,Industry From Account];
  
  public list<account>getacts(){
  return acts;
 
  }
}