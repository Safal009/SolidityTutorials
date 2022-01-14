pragma solidity 0.5.1;


// Enums are the way of creating user-defined data types, 
// it is usually used to provide names for integral 
// constants which makes the contract better for 
// maintenance and reading. Enums restrict the variable 
// with one of few predefined values, these values 
// of the enumerated list are called as enums. 
// Options of are represented with integer values 
// starting from zero, a default value can also be 
// given for the enum. By using enums it is possible 
// to reduce the bugs in the code.

contract MyContract{
    enum State {Waiting, Ready, Active}
    State public state;

    constructor() public{
        state = State.Waiting;
    }

    function activate() public{
        state = State.Active;
    }

    function isActive() public view returns(bool){
        return state == State.Active;
    }
}
