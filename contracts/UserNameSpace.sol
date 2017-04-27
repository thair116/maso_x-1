pragma solidity ^0.4.2;

contract UserNameSpace {
	mapping (string => address) names;

	// create a new user in this name space
	// this will modify the blockchain
	// TODO perhaps make name into bytes32
	function newUser(string name) returns (bool) {
		// check to see if this name is available
		// TODO maybe this should throw instead
		if (nameAlreadyTaken(name)) {
			return false;
		}
		names[name] = msg.sender;
		return true;
	}

	// this will not modify the blockchain
	function nameAlreadyTaken(string name) returns (bool) {
		// TODO there must be a better way to do this
		if (names[name] == 0x0000000000000000000000000000000000000000) {
			return false;
		}
		return true;
	}

	function getOwner(string name) returns (address) {
		return names[name];
	}
 }