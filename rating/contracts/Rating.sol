pragma solidity ^0.4.17;
// We have to specify what version of compiler this code will compile with

contract Rating {
  /* mapping field below is equivalent to an associative array or hash.
  The key of the mapping is candidate name stored as type bytes32 and value is
  an unsigned integer to store the vote count
  */
  
  mapping (bytes32 => uint8) public ratingsReceived;
  
  /* Solidity doesn't let you pass in an array of strings in the constructor (yet).
  We will use an array of bytes32 instead to store the list of candidates
  */
  
  bytes32[] public movieList;

  /* This is the constructor which will be called once when you
  deploy the contract to the blockchain. When we deploy the contract,
  we will pass an array of candidates who will be contesting in the election
  */
  function Rating(bytes32[] movieNames) public {
    movieList = movieNames;
  }

  // This function returns the total votes a candidate has received so far
  function totalVotesFor(bytes32 movie) view public returns (uint8) {
    return ratingsReceived[movie];
  }

  // This function increments the vote count for the specified candidate. This
  // is equivalent to casting a vote
  function voteForMovie(bytes32 movie) public {
    ratingsReceived[movie] += 1;
  }
}