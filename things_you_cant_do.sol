address a = space.nameAlreadyTaken('enodios');
Assert.equal(space.nameAlreadyTaken('enodios'), 0x72ba7d8e73fe8eb666ea66babc8116a41bfb10e2 , a);

/Users/thairfield/git/maso/x-1/test/TestUserNameSpace.sol:15:3: Error: Member "equal" is not available in type(library Assert) outside of storage.
		Assert.equal(space.nameAlreadyTaken('enodios'), 0x72ba7d8e73fe8eb666ea66babc8116a41bfb10e2 , a);
		^----------^
Compiliation failed. See above.