pragma solidity ^0.4.24;

contract rewardList{

  
    mapping(address => uint[]) reward_unixtime;
    mapping(address => uint[]) reward_point;
    mapping(address => string[]) reward_memo;


    function recordReward(address _user, uint256 _unixtime, uint256 _point, string _memo){
        require(reward_unixtime[_user].length==reward_point[_user].length && reward_point[_user].length==reward_memo[_user].length);
        reward_unixtime[_user].push(_unixtime);
        reward_point[_user].push(_point);
        reward_memo[_user].push(_memo);
    }
    
    function listReward(address _user) public view returns (uint256[], uint256[]) {
        return (reward_unixtime[_user], reward_point[_user]);
    }
    
}
