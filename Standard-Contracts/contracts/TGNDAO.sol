// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.20;

// import "@openzeppelin/contracts/governance/Governor.sol";
// import "@openzeppelin/contracts/governance/extensions/GovernorSettings.sol";
// import "@openzeppelin/contracts/governance/extensions/GovernorCountingSimple.sol";
// import "@openzeppelin/contracts/governance/extensions/GovernorStorage.sol";
// import "@openzeppelin/contracts/governance/extensions/GovernorVotes.sol";
// import "@openzeppelin/contracts/governance/extensions/GovernorVotesQuorumFraction.sol";

// contract TreegensDAO is Governor, GovernorSettings, GovernorCountingSimple, GovernorStorage, GovernorVotes, GovernorVotesQuorumFraction {
//     constructor(IVotes _token)
//         Governor("TreegensDAO")
//         GovernorSettings(7200 /* 1 day */, 50400 /* 1 week */, 0)
//         GovernorVotes(_token)
//         GovernorVotesQuorumFraction(4)
//     {}

//     // The following functions are overrides required by Solidity.

//     function votingDelay()
//         public
//         view
//         override(Governor, GovernorSettings)
//         returns (uint256)
//     {
//         return super.votingDelay();
//     }

//     function votingPeriod()
//         public
//         view
//         override(Governor, GovernorSettings)
//         returns (uint256)
//     {
//         return super.votingPeriod();
//     }

//     function quorum(uint256 blockNumber)
//         public
//         view
//         override(Governor, GovernorVotesQuorumFraction)
//         returns (uint256)
//     {
//         return super.quorum(blockNumber);
//     }

//     function proposalThreshold()
//         public
//         view
//         override(Governor, GovernorSettings)
//         returns (uint256)
//     {
//         return super.proposalThreshold();
//     }

//     function _propose(address[] memory targets, uint256[] memory values, bytes[] memory calldatas, string memory description, address proposer)
//         internal
//         override(Governor, GovernorStorage)
//         returns (uint256)
//     {
//         return super._propose(targets, values, calldatas, description, proposer);
//     }
// }