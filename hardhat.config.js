require("@nomicfoundation/hardhat-toolbox");

const fs = require("fs");

const project_Id = 'f49d5c8a41f741049889bf9b91b18a6d'

const keyData= fs.readFileSync('./p-key.txt',{
  encoding: 'utf8', flag:'r'
})




/** @type import('hardhat/config').HardhatUserConfig */

module.exports = {
  defaultNetwork:'hardhat',
  networks:{
    hardhat:{
      chainId:1337 //config standard

    },
    mumbai:{
      url:`https://polygon-mumbai.infura.io/v3/${project_Id}`,
      accounts:[keyData]
    },
    mainnet:{
      url:`https://mainnet.infura.io/v3/${project_Id}`,
      accounts:[keyData]
    }
  },
  solidity: {
    version:"0.8.20",
    settings:{
      optimizer:{
        enabled:true,
        runs:200
      }
    }
  }
  
};
