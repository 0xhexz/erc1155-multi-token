async function main() {
  const MultiToken = await ethers.getContractFactory("MyMultiToken");
  const token = await MultiToken.deploy();
  await token.deployed();

  console.log("ERC1155 deployed at:", token.address);
}

main().catch(console.error);
