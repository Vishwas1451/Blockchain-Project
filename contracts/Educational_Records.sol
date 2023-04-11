pragma solidity ^0.8.18;
//SPDX-License-Identifier:MIT

contract Student_Record {
    struct student{
        string name;
        string srn;
        uint marks1;
        uint marks2;
        uint marks3;
        uint marks4;
        uint marks5;
    }

    struct details{
        string stud_srn;
        string password;
    }

    mapping(string => details) private SIGNUP;

    function addUser(string memory stud_srn, string memory password) public {
        SIGNUP[stud_srn] = details(stud_srn, password);
    }

    function getSignupDetails(string memory srn) external view returns(details memory) {
        return SIGNUP[srn];
    }

    mapping(string => student) private information;

    function setStudentInformation (string memory name, string memory srn, uint marks1, uint marks2, uint marks3, uint marks4, uint marks5) public {
        information[srn] = student(name, srn, marks1, marks2, marks3, marks4, marks5);
    }

    function getStudentInformation (string memory srn) external view returns(student memory) {
        return information[srn];
    }
}