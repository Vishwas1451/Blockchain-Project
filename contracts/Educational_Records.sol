pragma solidity ^0.8.18;
//SPDX-License-Identifier:MIT

contract Election {
    struct student{
        string name;
        string srn;
        uint marks1;
        uint marks2;
        uint marks3;
        uint marks4;
    }
    mapping(string => student) private information;

    function setStudentInformation (string memory name, string memory srn, uint marks1, uint marks2, uint marks3, uint marks4) public {
        information[srn] = student(name,srn,marks1,marks2,marks3,marks4);
    }
    function getStudentInformation (string memory srn) external view returns(student memory){
        return information[srn];
    }

}