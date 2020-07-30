private ["_kingActive", "_kingAmount"];
diag_log "Bounty Server System Loop";

_kingActive = (getNumber(configFile >> "BountySettings" >> "King" >> "enabled") isEqualTo 1);

if (_kingActive) then
{
	_kingAmount = getNumber(configFile >> "BountySettings" >> "King" >> "amount");
	
	if (count ExileBountyKings < _kingAmount) then 
	{
		call ExileServer_system_bounty_createKing;
	};
};

_bountyActive = (getNumber(configFile >> "BountySettings" >> "Bounty" >> "enabled") isEqualTo 1);

if (_bountyActive) then
{
	_bountyAmount = getNumber(configFile >> "BountySettings" >> "Bounty" >> "amount");
	
	if (count ExileBountyBounties < _bountyAmount) then 
	{
		call ExileServer_system_bounty_createBounty;
	};
};