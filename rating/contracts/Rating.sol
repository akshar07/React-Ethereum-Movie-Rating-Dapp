pragma solidity ^0.4.17;
// We have to specify what version of compiler this code will compile with

contract Rating {
  /* mapping field below is equivalent to an associative array or hash.
  */
  
  mapping (bytes32 => uint8) public ratingsReceived;
  
  /* We will use an array of bytes32 instead to store the list of movies
  */
  
  bytes32[] public movieList;

  /* This is the constructor which will be called once when you
  deploy the contract to the blockchain. When we deploy the contract,
  we will pass an array of movies for which users will give ratings
  */
  function Rating(bytes32[] movieNames) public {
    movieList = movieNames;
  }

  // This function returns the total ratings a movie has received so far
  function totalVotesFor(bytes32 movie) view public returns (uint8) {
    return ratingsReceived[movie];
  }

  // This function increments the vote count for the specified movie. Equivalent to upvoting
  function voteForMovie(bytes32 movie) public {
    ratingsReceived[movie] += 1;
  }
}