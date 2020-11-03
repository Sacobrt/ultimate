#if defined _dialogs_included
    #endinput
#endif
#define _dialogs_included

#if !defined isnull
    #define isnull(%1) ((!(%1[0])) || (((%1[0]) == '\1') && (!(%1[1]))))
#endif

#define IsDialogOpen(%0,%1) (dl_playerDialogID[%0] == %1)
#define DLG(%0,%1,%2,%3,%4) forward dia_%0(%1,%2,%3,%4); public dia_%0(%1,%2,%3,%4)
	
new dl_playerDialogID[MAX_PLAYERS];

stock dialogs_ShowPlayerDialog(playerid, dialogid, style, caption[], info[], button1[], button2[])
{
    if(!IsPlayerConnected(playerid)) return 0;
	dl_playerDialogID[playerid] = dialogid;
	ShowPlayerDialog(playerid, 0, style, caption, info, button1, button2);
	return 1;
}
#if defined _ALS_ShowPlayerDialog
    #undef ShowPlayerDialog
#else
    #define _ALS_ShowPlayerDialog
#endif
#define ShowPlayerDialog(%0,%1,%2,%3,%4,%5,%6) dialogs_ShowPlayerDialog(%0,%1,%2,%3,%4,%5,%6)
	
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) 
{
	if(strlen(inputtext)) { for(new id = (strlen(inputtext) - 1); id >= 0; id--) if(inputtext[id] == '%') inputtext[id] = '#'; }
	if(dl_playerDialogID[playerid] != -1)
	{
	    new string[12];
	    format(string, sizeof(string), "dia_%i", dl_playerDialogID[playerid]);
	    dl_playerDialogID[playerid] = -1;
		CallLocalFunction(string, "iiis", playerid, response, listitem, isnull(inputtext) ? ("\1") : inputtext);
	}
	return 1;
}
#if defined _ALS_OnDialogResponse
    #undef OnDialogResponse
#else
    #define _ALS_OnDialogResponse
#endif
#if defined dialogs_OnDialogResponse
	forward dialogs_OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]);
#endif
#define	OnDialogResponse dialogs_OnDialogResponse

public OnPlayerConnect(playerid)
{
    dl_playerDialogID[playerid] = -1;
    #if defined dialogs_OnPlayerConnect
		return dialogs_OnPlayerConnect(playerid);
	#else
	    return 1;
	#endif
}
#if defined _ALS_OnPlayerConnect
	#undef OnPlayerConnect
#else
	#define _ALS_OnPlayerConnect
#endif
#if defined dialogs_OnPlayerConnect
	forward dialogs_OnPlayerConnect(playerid);
#endif
#define OnPlayerConnect dialogs_OnPlayerConnect
