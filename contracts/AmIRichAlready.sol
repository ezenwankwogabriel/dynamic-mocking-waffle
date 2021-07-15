pragma solidity >=0.4.22 <0.9.0;

interface IERC20 {
  function balanceOf(address amount) external view returns (uint256);
}

contract AmIRichAlready {
  IERC20 private tokenContract;
  uint public richness = 1000000 * 10 ** 18;

  constructor(IERC20 _tokenContract) public {
    tokenContract = _tokenContract;
  }

  function check() public view returns (bool) {
    uint balance = tokenContract.balanceOf(msg.sender);
    return balance > richness;
  }
}