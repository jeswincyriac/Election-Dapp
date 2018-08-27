pragma solidity ^0.4.24;

contract Election{                   //like a class

    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
             //declaring state variable
             //storing the accounts that have hasVoted
    mapping(address => bool) public voters;
    mapping(uint => Candidate) public candidates;
    uint public candidatesCount;
    function Election ()  public{
        addCandidate("Candidate1");
        addCandidate("Candidate2");
    }

    event votedEvent (uint indexed _candidateId);

    function addCandidate (string _name) private{
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount,_name,0);
    }
    function vote (uint _candidateId) public {
        require(!voters[msg.sender]);
        require(_candidateId > 0 && _candidateId <= candidatesCount);
        voters[msg.sender] = true;
        candidates[_candidateId].voteCount ++;
        votedEvent(_candidateId);
    }

}
