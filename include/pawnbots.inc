#if defined _pawnbots_included
	#endinput
#endif
#define _pawnbots_included

stock IsPlayerPBot(playerid) return (CallRemoteFunction("IsPlayerPBot", "i", playerid) == 1);

stock pb_Kick(playerid)
{
    if(!IsPlayerPBot(playerid)) Kick(playerid);
	return 1;
}
#if defined _ALS_Kick
	#undef Kick
#else
	#define	_ALS_Kick
#endif
#define Kick pb_Kick

stock pb_Ban(playerid)
{
    if(!IsPlayerPBot(playerid)) Ban(playerid);
	return 1;
}
#if defined _ALS_Ban
	#undef Ban
#else
	#define	_ALS_Ban
#endif
#define Ban pb_Ban

stock pb_BanEx(playerid, const reason[])
{
    if(!IsPlayerPBot(playerid)) BanEx(playerid, reason);
	return 1;
}
#if defined _ALS_BanEx
	#undef BanEx
#else
	#define	_ALS_BanEx
#endif
#define BanEx pb_BanEx

#if defined BlockIpAddress
	stock pb_BlockIpAddress(ip_address[], timems)
	{
		new ip[20];
	    for(new i = GetMaxPlayers()-1; i >= 0; i--) if(IsPlayerConnected(i))
	    {
	        GetPlayerIp(i, ip, sizeof(ip));
	        if(ip[0] && ip_address[0] && !strcmp(ip, ip_address)) { if(!IsPlayerPBot(i)) BlockIpAddress(ip_address, timems); }
	    }
		return 1;
	}
	#if defined _ALS_BlockIpAddress
		#undef BlockIpAddress
	#else
		#define	_ALS_BlockIpAddress
	#endif
	#define BlockIpAddress pb_BlockIpAddress
#endif
