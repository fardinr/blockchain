pragma solidity >=0.7.0 <0.9.0;
pragma experimental ABIEncoderV2;
contract students
{
struct Student
{
uint rn;
string name;
string class;
string department;
string course;
}
Student[] student;

uint count;
constructor()
{
count=0;
}
function addstudentInfo(uint rollNumber, string memory name, string memory class, string memory dept, string memory course )public
{
student.push(Student(rollNumber,name,class,dept, course));
}

function getstudent(uint rollNumber ) public view returns (uint, string memory)
{
uint i =0;
for (i=0;i<student.length;i++)
{
if (student[i].rn == rollNumber)
{
return(student[i].rn, student[i].name);
}
}
return(student[0].rn, student[0].name);
}
function displayAllInfo() public view returns (Student[]memory)
{
return student;
}
}
