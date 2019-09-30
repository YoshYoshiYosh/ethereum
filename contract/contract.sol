// pragma solidity ^0.4.23;
pragma solidity ^0.5.11;

contract HelloWorld {
    string public greeting;
    address public owner;

    function HelloWarld(string memory _greeting) public {
        greeting = _greeting;
        owner = msg.sender;
    }

    function say() public view returns (string memory) {
        return greeting;
    }

    function getBalance() public view returns (uint balance) {
        return owner.balance;
    }

    function getAddress() public view returns (address) {
        return owner;
    }
}