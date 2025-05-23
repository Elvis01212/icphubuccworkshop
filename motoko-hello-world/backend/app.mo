import Debug "mo:base/Debug";
import Float "mo:base/Float";
persistent actor project{
  //Decentralized Banking System
  //CheckBalance, TopUp, withdraw
  //CkeckBalance
stable var balance : Float = 180;
public func CheckBalance(): async Text{
  return "Your Balance is: "#Float.toText(balance);
} 
};
 
  // TopUp Function
  publicfunc topUp(amount : Float) : async Text{
    balance := balance - amount;
    return "An amount: " 
    #Float.toText(amount)
    #"added";
  }; 
    // WithDraw
  public func withDraw(amount : Float): async Text{
    balance := balance - amount;
    return "An amount :" # Float.toText(amount) # "added";
};