pragma solidity ^0.5.0;

contract Adoption {
// define a single variable adopters using address with array length of 16. 
// defined as a public variable which has automatic getter methods
address[16] public adopters;

// Adopting a pet Function

function adopt(uint petId) public returns (uint) { // In the function you have to specify the input and out types - Integer
    require(petId >= 0 && petId <= 15); //require statement checks for petId is within range of ID values (16 in our case)

    adopters[petId] = msg.sender; // if in range, we add address that made call to adopters array. 
    // the address of person taht requested is denoted by msg.sender

    return petId;
}

// Retrieving the adopters Function

function getAdopters() public view returns (address[16] memory) { //since adopters is already declared we can just return it. 
// using "memory" gives the data location for the variable
// the "view" keyword means that the function does not modify the state of the contract. 
    return adopters;
}

}

