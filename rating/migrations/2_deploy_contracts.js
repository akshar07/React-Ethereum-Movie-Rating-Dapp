var Ratings = artifacts.require("./Rating.sol");

module.exports = function(deployer) {
  deployer.deploy(Ratings,['Star Wars', 'Avatar', 'Inception'], {gas: 6700000});
};
