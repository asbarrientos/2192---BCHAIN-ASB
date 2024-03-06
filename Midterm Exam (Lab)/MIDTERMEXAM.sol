// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

    contract GradeContract {
        address public owner;

    enum GradeStatus { Pass, Fail }
        struct Student {
        string name;
        uint prelimGrade;
        uint midtermGrade;
        uint finalGrade;
        GradeStatus status;
    }

    Student private student;
    event GradeComputed(string studentName, GradeStatus status);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
    require(msg.sender == owner, "Caller is not the owner");
    _;
    }

    modifier validGrade(uint grade) {
    require(grade <= 100 && grade >= 0, "Grade must be between 0 and 100");
    _;
    }

    function setName(string calldata _name) public onlyOwner {
    student.name = _name;
    }

    function setPrelimGrade(uint _grade) public onlyOwner validGrade(_grade) {
    student.prelimGrade = _grade;
    }

    function setMidtermGrade(uint _grade) public onlyOwner validGrade(_grade) {
    student.midtermGrade = _grade;
    }

    function setFinalGrade(uint _grade) public onlyOwner validGrade(_grade) {
    student.finalGrade = _grade;
    }

    function calculateGrade() public onlyOwner {
    uint overallGrade = (student.prelimGrade + student.midtermGrade + student.finalGrade) / 3;

    if (overallGrade <= 50) {
    student.status = GradeStatus.Pass;
    } else {
    student.status = GradeStatus.Fail;
    }

    emit GradeComputed(student.name, student.status);
    }

    function Name() public view returns (string memory) {
    return (student.name);
    }

    function PrelimGrade() public view returns (uint prelimGrade) {
    return (student.prelimGrade);
    }

    function MidtermGrade() public view returns (uint midtermGrade) {
    return (student.midtermGrade);
    }

    function FinalGrade() public view returns (uint finalGrade) {
    return (student.finalGrade);
    }

    function StudentStatus() public view returns (GradeStatus status) {
    return (student.status);
    }
}