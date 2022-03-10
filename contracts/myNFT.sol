// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract myNFT is ERC721URIStorage , Ownable{
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds; // Here we give id of a document(image,video,audio,art,etc)

    constructor() ERC721("Himanshu","HK"){} // NFT name is Himanshu and their symbol is HK
    
    //onlyOwner comes from Ownable library
    function mintNFT(address recipient, string memory tokenURI) public onlyOwner returns(uint256)
    {
        _tokenIds.increment(); //increment comes from counter library
        uint256 newItemId= _tokenIds.current(); //initially current value is 0, current function comes from counter library
        _mint(recipient,newItemId); // here we mint the NFT to recipient, its declared in ERC721 library
        _setTokenURI(newItemId,tokenURI); // here we sets the link of document to integer newItemId
        return newItemId;
    }
}