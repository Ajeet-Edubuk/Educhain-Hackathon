// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract EdubukEsealer is Ownable {
    /////////////////// STRUCTURE /////////////////////////////////////////////////////////////////////

    struct Institute {
        string instituteName;
        string ackronym;
        uint256 witnessCount;
        uint256 id;
        address currentWitness;

    }

    struct Cert {
        Institute institute;
        string studentname;
        address studentAdd; 
        string certHash;
        string certType;
        string certURI;
        uint256 timestamp;
        address witness;
        string issuerName;
    }

    struct BulkUploadData {
        string studentname;
        address studentAdd;
        string URI;
        string hash;
        string _type;
        address _witness;
    }

    
    struct Student {
        string name;
        string[] instituteName;
        string[] uri;
        address studentAdd;
    }

    struct InstituteInfo {
        string instituteName;
        address instituteAddress;
    }

    ///////////// variables /////////////////////////////////////////////////////////////

    address private Contractowner;
    uint256 InstituteID = 1;

    ////////////////////// MAPPINGS ////////////////////////////////////////////////////////////////////

    mapping(bytes32 => Cert) private certificates;

    mapping(uint256 => Institute) private institutes; 

    mapping(uint256 => address[]) private instituteWitnesses;

    mapping(address => bool) private registeredInstitute;

    mapping(uint256 => mapping(address => bool)) private institutewitnesschk;

    mapping(address => uint256) private institute_ID;
    
    mapping(address => uint256) private studentInstituteId; 

    mapping(address => Student) private studentInfo;

    mapping(address => InstituteInfo[]) private instituteList;

    ///////////////////// EVENTS ////////////////////////////////////////////////////////////////////////

    event InstituteRegistered(uint256 id, string name);

    event InstituteWitnessUpdated(uint256 id, address witness);

    event InstituteRevoked(uint256 id, address instituteAddress); 


    ///////////////// CONSTRUCTOR /////////////////////////////////////////////////////////////////////////

    constructor(address contractOwner) Ownable(contractOwner){}

    ///////////////UTILITY FUNCTIONS/////////////////////////////////////
    
    
    // string to bytes32 conversion

    function stringToBytes32(
        string memory source
    ) private pure returns (bytes32 result) {
        bytes memory tempEmptyStringTest = bytes(source);
        if (tempEmptyStringTest.length == 0) {
            return 0x0;
        }
        assembly {
            result := mload(add(source, 32))
        }
    }

    //////////////////////////////// FUNCTIONS ///////////////////////////////////////////////////////

    // This function is used to register Institute
    function registerInstitute(
        string memory _instituteName,
        string memory _ackronynm,
        address _witness
    ) external onlyOwner {
        //  require(institutes[InstituteID].id == 0, "Issuer already registered");
        require(!registeredInstitute[_witness], "Witness already registered");
        institutes[InstituteID].instituteName = _instituteName;
        institutes[InstituteID].ackronym = _ackronynm;
        instituteWitnesses[InstituteID].push(_witness);
        institutes[InstituteID].currentWitness = _witness;
        institutes[InstituteID].id = InstituteID;
        registeredInstitute[_witness] = true;
        institutewitnesschk[InstituteID][_witness] = true;
        institute_ID[_witness] = InstituteID;
        institutes[InstituteID].witnessCount++;
        instituteList[msg.sender].push(
            InstituteInfo({
                instituteName: _instituteName,
                instituteAddress: _witness
            })
        );
        emit InstituteRegistered(InstituteID, _instituteName);
        InstituteID++;
    }

    // This Function is used to Update the Witness

    function updateWitness(address _newwitness) external {
        uint256 id = institute_ID[msg.sender];
        require(
            institutewitnesschk[id][msg.sender] || msg.sender == Contractowner,
            "Not the correct institute"
        );
        institutes[id].currentWitness = _newwitness;
        institutes[id].witnessCount++;
        registeredInstitute[_newwitness] = true;
        instituteWitnesses[id].push(_newwitness);
        institutewitnesschk[id][_newwitness] = true;
        institute_ID[_newwitness] = id;
        emit InstituteWitnessUpdated(id, _newwitness);
    }

    // this function is used to revoke Witness
    function revokeWitness(address _witness) external {
        uint256 id = institute_ID[msg.sender];
        require(
            institutewitnesschk[id][msg.sender] || msg.sender == Contractowner,
            "Not the correct institute"
        );
        require(
            institutes[id].witnessCount - 1 > 0,
            "There cannot be zero witnesses"
        );
        institutes[id].witnessCount--;
        registeredInstitute[_witness] = false;
        institutewitnesschk[id][_witness] = false;
    }

    // This function is used to revoke institute
    function revokeInstitute(address _institute) external onlyOwner {
        require(registeredInstitute[_institute], "Institute not registered");

        uint256 id = institute_ID[_institute];
        delete institutes[id];
        registeredInstitute[_institute] = false;

        emit InstituteRevoked(id, _institute);
    }

}