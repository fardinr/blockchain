pragma solidity ^0.4.2;
 contract Election {
// Model a Candidate structCandidate {
uint id; 
string  name;
uint voteCount;
}
// Store accounts that have voted 
mapping(address => bool) public voters;
// Store Candidates
// Fetch Candidate
mapping(uint => Candidate) public candidates;
// Store Candidates 
Count uint public candidatesCount;
// voted event 
eventvotedEvent (
uint indexed _candidateId
);
function Election() public { 
addCandidate("N MODI, BJP"); addCandidate("A kejriwal, AAP"); addCandidate("Rahul G, Congress"); addCandidate("Nikhil, JDS");
}
function addCandidate (string _name) private 
{ candidatesCount ++;
candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
}
function vote (uint _candidateId) public {
// require that they haven't voted before require(!voters[msg.sender]);
// require a valid candidate
 
require(_candidateId > 0 && _candidateId <= candidatesCount);
// record that voter has voted voters[msg.sender] = true;
// update candidate vote Count candidates[_candidateId].voteCount ++;
// trigger voted event votedEvent(_candidateId);
}
}
