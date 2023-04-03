pragma solidity ^0.8.18;
//SPDX-License-Identifier:MIT

contract Student_Record {
    struct student{
        string name;
        string srn;
        string marks1;
        string marks2;
        string marks3;
        string marks4;
    }
    mapping(string => student) private information;

    function setStudentInformation (string memory name, string memory srn, string memory marks1, string memory marks2, string memory marks3, string memory marks4) public {
        information[srn] = student(name,srn,marks1,marks2,marks3,marks4);
    }
    function getStudentInformation (string memory srn) public view returns(string memory){
        student memory x = information[srn];
        return x.srn;
    }

}