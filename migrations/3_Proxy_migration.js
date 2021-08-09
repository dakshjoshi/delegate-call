const Proxy = artifacts.require("Proxy");

module.exports = async function (deployer) {
  deployer.deploy(Proxy);
};
