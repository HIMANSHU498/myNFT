async function main() {
    const myNFT = await ethers.getContractFactory("myNFT");
  
    // Start deployment, returning a promise that resolves to a contract object
    const MyNFT = await myNFT.deploy();
    console.log("Contract deployed to address:", MyNFT.address);
  }
  
  main()
    .then(() => process.exit(0))
    .catch((error) => {
      console.error(error);
      process.exit(1);
    });
  //0xAc702E9e3Bcd86396A8655d17B25fB9B7b85FeAD contract address