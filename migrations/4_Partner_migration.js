const Partner = artifacts.require("Partner");

// const Proxy = artifacts.require("Proxy");
// const Main = artifacts.require("Main");

module.exports = async function (deployer) {
  deployer.deploy(Partner);

  // let main = await Main.deployed();
  // let proxy = await Proxy.deployed();
  // let partner = await Partner.deployed();
};

//main : 0x0153F96130f6EaeAa9955fF8464C34a618Af3428
//proxy : 0x903c1A2Fbf2c0A2142431bf9c552Cd40528Ac26D
//partner : 0x056Fe322303D6Ef291e0B964B7fe6D0A58c8b239
