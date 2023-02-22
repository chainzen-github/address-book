// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


contract AddressBook {
   
   // List of all address book
   mapping(address => address[]) private _addresses ;

   // Alias data storage
   mapping(address => mapping(string => address)) private _aliases;

   // mapping of all aliases in the address book of a given user
   mapping(address => string[]) private _allAliases;

   // add new address book
   function addAddressBook(address  _address, string memory _alias) public {
       // adding address to the book    s
       _addresses[msg.sender].push(_address);
       // adding alias to the address book
       _aliases[msg.sender][_alias] = _address;
       // adding alias to the alias book
       _allAliases[msg.sender].push(_alias);
   }

   // Remove an address from the address book and the alias book
   function removeAddress(address _deleteAddr) public {
       // adding the remove method

   }

   function getMyAddressBook () public view returns (address[] memory){
       return _addresses[msg.sender];
   }
   function getMyAliasBook() public view returns (string[] memory){
       return _allAliases[msg.sender];
   }
   function getAddressFromAlias (string memory _inputAlias) public view returns (address){
       return _aliases[msg.sender][_inputAlias];
   }


}