var ConvertLib = artifacts.require("./ConvertLib.sol");
var MetaCoin = artifacts.require("./MetaCoin.sol");
var UserNameSpace = artifacts.require("./UserNameSpace.sol");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, MetaCoin);
  // deployer.link(ConvertLib, UserNameSpace);
  deployer.deploy(MetaCoin);
  deployer.deploy(UserNameSpace);
};
