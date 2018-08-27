pragma solidity ^0.4.24;

contract Election{                   //like a class

    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
             //declaring state variable
    mapping(uint => Candidate) public candidates;
    uint public candidatesCount;
    function Election ()  public{
        addCandidate("Candidate1");
        addCandidate("Candidate2");
    }
    function addCandidate (string _name) private{
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount,_name,0);
    }

}
