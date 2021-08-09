const Proxy = artifacts.require("Proxy");
// const Main = artifacts.require("Main");

module.exports = async function (deployer) {
  deployer.deploy(Proxy);
};

//main : 0xb6BC4c26aA9d58051bcCC12AD22C1B2e6EDFD363
//proxy : 0x3b33A2016F3678aEa8c2B587E25270BafA20E92A
