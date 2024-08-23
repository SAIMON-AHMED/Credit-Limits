// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Holi {

    uint private credit = 100;
    uint private blueCredit = 40;
    uint private redCredit = 40;
    uint private greenCredit = 30;



    // this function is used to buy the desired colour
    function buyColour(string memory colour, uint price) public {
        require(keccak256(abi.encodePacked(colour)) == keccak256(abi.encodePacked("red"))
    || keccak256(abi.encodePacked(colour)) == keccak256(abi.encodePacked("blue")) || 
    keccak256(abi.encodePacked(colour)) == keccak256(abi.encodePacked("green")), "Invalid colour");

        require(credit >= price, "You don't have enough credit");

        if (keccak256(abi.encodePacked(colour)) == keccak256(abi.encodePacked("red"))) {
            require(redCredit >= price, "Exceeded the credit limit for this colour");
            credit -= price;
            redCredit -= price;
        }
        if (keccak256(abi.encodePacked(colour)) == keccak256(abi.encodePacked("blue"))) {
            require(blueCredit >= price, "Exceeded the credit limit for this colour");
            credit -= price;
            blueCredit -= price;
        }
        if (keccak256(abi.encodePacked(colour)) == keccak256(abi.encodePacked("green"))) {
            require(greenCredit >= price, "Exceeded the credit limit for this colour");
            credit -= price;
            greenCredit -= price;
        }
    }

    //this functions will return credit balance
    function credits() public view returns(uint n) {
        n = credit;
    }

}
