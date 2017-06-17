pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/UserNameSpace.sol";
import "../contracts/MetaCoin.sol";


contract TestUserNameSpace {

	function testNewNameSpace() {
		UserNameSpace space = UserNameSpace(DeployedAddresses.UserNameSpace());

		Assert.equal(space.nameAlreadyTaken('enodios'), false , 'name is already taken');
	}

	function testCreateNewUser() {
		UserNameSpace space = UserNameSpace(DeployedAddresses.UserNameSpace());

		space.newUser('enodios', msg.sender);

		Assert.equal(space.nameAlreadyTaken('enodios'), true, 'name space does not properly realizes name is taken');
	}

	function testCantCreateDuplicateUser() {
		UserNameSpace space = UserNameSpace(DeployedAddresses.UserNameSpace());

		space.newUser('enodios', msg.sender);

		Assert.equal(space.newUser('enodios', msg.sender), false, 'duplicate name allowed');
	}

	function testOwnerIsRegistered(){
		UserNameSpace space = UserNameSpace(DeployedAddresses.UserNameSpace());

		space.newUser('enodios', msg.sender);

		// Assert.equal(space.getOwner('enodios'), msg.sender, 'owner not saved');
		// Assert.equal(space.getOwner('enodios'), tx.origin, 'owner not saved');
		Assert.equal(space.getOwner('enodios'), msg.sender, 'owner not saved');
	}
}
