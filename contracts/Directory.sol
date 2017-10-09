pragma solidity 0.4.15;

import "./IGovernance.sol";
import "./ProposalStorage.sol";
import "./zeppelin/ownership/Ownable.sol";

contract Directory is Ownable{

    IMerit voteMeritContract;
    IVoteProposal voteProposalContract;
    IMerit createProposalMeritContract;
    ICreateProposal createProposalContract;
    ProposalStorage proposalStorageContract;

    function Directory(address _owner)
    {
        owner = _owner;
    }

    function replaceVoteMerit(IMerit newContract) onlyOwner {
        if (newContract != address(0)) //TODO: I don't think is really necessary
            voteMeritContract = newContract;
    }

    function replaceVoteProposal(IVoteProposal newContract) onlyOwner {
        if (newContract != address(0))
            voteProposalContract = newContract;
    }

    function replaceCreateProposalMerit(IMerit newContract) onlyOwner {
        if (newContract != address(0))
            createProposalMeritContract = newContract;
    }

    function replaceCreateProposal(ICreateProposal newContract) onlyOwner {
        if (newContract != address(0))
            createProposalContract = newContract;
    }

    function replaceProposalStorage(ProposalStorage newContract) onlyOwner {
        if (newContract != address(0))
            proposalStorageContract = newContract;
    }

}
