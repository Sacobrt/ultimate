/*
Recomandat sa fie pus in gamemode de voi pentru nu a nu intampina probleme.
Recomandat sa fie pus in gamemode de voi pentru nu a nu intampina probleme.
Recomandat sa fie pus in gamemode de voi pentru nu a nu intampina probleme.
Succes
Succes
*/
#include <a_samp>
#include <zcmd>
#include <sscanf2>
#include <foreach>
//==============================================================================
new	RouletteInGame[MAX_PLAYERS],RouletteStatus,RouletteTime,RouletteTime2,
	playtime,prohodtime,betplayer[MAX_PLAYERS],betsumma[MAX_PLAYERS],
	totalbet[3],podkrut,TotalBet,totalsumma[3],
	bool:gSelected[MAX_PLAYERS],gSelectColor[MAX_PLAYERS],
	step,step2,step3,prohod,zmidialog[MAX_PLAYERS],
	Text:CasinoDraw[23],PlayerText:CasinoDrawPlayer[MAX_PLAYERS][2];
	
enum pInfo
{
	pName[MAX_PLAYER_NAME]
};
new pData[MAX_PLAYERS][pInfo];
//==============================================================================
public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print("[FilterScrips]: Recomandat sa fie pus in gamemode de voi pentru nu a nu intampina probleme.");
	print("[FilterScrips]: Succes");
	print("--------------------------------------\n");
	TotalBet = 0,podkrut = 0,RouletteStatus = 0,RouletteTime = 20,RouletteTime2 = 0;
	SetTimer("GlobalServerTimer", 1000, true);
	
	CasinoDraw[0] = TextDrawCreate(552.000244, 163.692581, "usebox");
	TextDrawLetterSize(CasinoDraw[0], 0.000000, 21.442588);
	TextDrawTextSize(CasinoDraw[0], 87.333305, 0.000000);
	TextDrawAlignment(CasinoDraw[0], 1);
	TextDrawColor(CasinoDraw[0], 0);
	TextDrawUseBox(CasinoDraw[0], true);
	TextDrawBoxColor(CasinoDraw[0], 102);
	TextDrawSetShadow(CasinoDraw[0], 0);
	TextDrawSetOutline(CasinoDraw[0], 0);
	TextDrawFont(CasinoDraw[0], 0);

	CasinoDraw[1] = TextDrawCreate(154.999923, 111.011093, "usebox");
	TextDrawLetterSize(CasinoDraw[1], 0.000000, 5.365226);
	TextDrawTextSize(CasinoDraw[1], 87.333351, 0.000000);
	TextDrawAlignment(CasinoDraw[1], 1);
	TextDrawColor(CasinoDraw[1], 0);
	TextDrawUseBox(CasinoDraw[1], true);
	TextDrawBoxColor(CasinoDraw[1], 170);
	TextDrawSetShadow(CasinoDraw[1], 0);
	TextDrawSetOutline(CasinoDraw[1], 0);
	TextDrawFont(CasinoDraw[1], 0);

	CasinoDraw[2] = TextDrawCreate(222.000076, 111.011131, "usebox");
	TextDrawLetterSize(CasinoDraw[2], 0.000000, 5.377983);
	TextDrawTextSize(CasinoDraw[2], 154.000076, 0.000000);
	TextDrawAlignment(CasinoDraw[2], 1);
	TextDrawColor(CasinoDraw[2], 0);
	TextDrawUseBox(CasinoDraw[2], true);
	TextDrawBoxColor(CasinoDraw[2], -16777046);
	TextDrawSetShadow(CasinoDraw[2], 0);
	TextDrawSetOutline(CasinoDraw[2], 0);
	TextDrawFont(CasinoDraw[2], 0);

	CasinoDraw[3] = TextDrawCreate(289.000000, 111.011131, "usebox");
	TextDrawLetterSize(CasinoDraw[3], 0.000000, 5.398560);
	TextDrawTextSize(CasinoDraw[3], 220.999908, 0.000000);
	TextDrawAlignment(CasinoDraw[3], 1);
	TextDrawColor(CasinoDraw[3], 0);
	TextDrawUseBox(CasinoDraw[3], true);
	TextDrawBoxColor(CasinoDraw[3], 170);
	TextDrawSetShadow(CasinoDraw[3], 0);
	TextDrawSetOutline(CasinoDraw[3], 0);
	TextDrawFont(CasinoDraw[3], 0);

	CasinoDraw[4] = TextDrawCreate(355.666961, 110.596260, "usebox");
	TextDrawLetterSize(CasinoDraw[4], 0.000000, 5.431893);
	TextDrawTextSize(CasinoDraw[4], 288.000183, 0.000000);
	TextDrawAlignment(CasinoDraw[4], 1);
	TextDrawColor(CasinoDraw[4], 0);
	TextDrawUseBox(CasinoDraw[4], true);
	TextDrawBoxColor(CasinoDraw[4], -16777046);
	TextDrawSetShadow(CasinoDraw[4], 0);
	TextDrawSetOutline(CasinoDraw[4], 0);
	TextDrawFont(CasinoDraw[4], 0);

	CasinoDraw[5] = TextDrawCreate(421.666473, 110.596221, "usebox");
	TextDrawLetterSize(CasinoDraw[5], 0.000000, 5.452468);
	TextDrawTextSize(CasinoDraw[5], 354.333190, 0.000000);
	TextDrawAlignment(CasinoDraw[5], 1);
	TextDrawColor(CasinoDraw[5], 0);
	TextDrawUseBox(CasinoDraw[5], true);
	TextDrawBoxColor(CasinoDraw[5], 170);
	TextDrawSetShadow(CasinoDraw[5], 0);
	TextDrawSetOutline(CasinoDraw[5], 0);
	TextDrawFont(CasinoDraw[5], 0);

	CasinoDraw[6] = TextDrawCreate(486.000091, 110.596252, "usebox");
	TextDrawLetterSize(CasinoDraw[6], 0.000000, 5.431891);
	TextDrawTextSize(CasinoDraw[6], 420.333404, 0.000000);
	TextDrawAlignment(CasinoDraw[6], 1);
	TextDrawColor(CasinoDraw[6], 0);
	TextDrawUseBox(CasinoDraw[6], true);
	TextDrawBoxColor(CasinoDraw[6], -16777046);
	TextDrawSetShadow(CasinoDraw[6], 0);
	TextDrawSetOutline(CasinoDraw[6], 0);
	TextDrawFont(CasinoDraw[6], 0);

	CasinoDraw[7] = TextDrawCreate(551.666381, 110.181465, "usebox");
	TextDrawLetterSize(CasinoDraw[7], 0.000000, 5.473046);
	TextDrawTextSize(CasinoDraw[7], 485.000000, 0.000000);
	TextDrawAlignment(CasinoDraw[7], 1);
	TextDrawColor(CasinoDraw[7], 0);
	TextDrawUseBox(CasinoDraw[7], true);
	TextDrawBoxColor(CasinoDraw[7], 170);
	TextDrawSetShadow(CasinoDraw[7], 0);
	TextDrawSetOutline(CasinoDraw[7], 0);
	TextDrawFont(CasinoDraw[7], 0);

	CasinoDraw[8] = TextDrawCreate(324.333251, 108.522209, "usebox");
	TextDrawLetterSize(CasinoDraw[8], 0.000000, 5.703497);
	TextDrawTextSize(CasinoDraw[8], 320.333251, 0.000000);
	TextDrawAlignment(CasinoDraw[8], 1);
	TextDrawColor(CasinoDraw[8], 0);
	TextDrawUseBox(CasinoDraw[8], true);
	TextDrawBoxColor(CasinoDraw[8], -1);
	TextDrawSetShadow(CasinoDraw[8], 0);
	TextDrawSetOutline(CasinoDraw[8], 0);
	TextDrawFont(CasinoDraw[8], 0);

	CasinoDraw[9] = TextDrawCreate(387.333251, 89.600021, "Jackpot Roulette");
	TextDrawLetterSize(CasinoDraw[9], 0.650999, 2.500150);
	TextDrawAlignment(CasinoDraw[9], 3);
	TextDrawColor(CasinoDraw[9], -1);
	TextDrawUseBox(CasinoDraw[9], true);
	TextDrawBoxColor(CasinoDraw[9], 0);
	TextDrawSetShadow(CasinoDraw[9], 0);
	TextDrawSetOutline(CasinoDraw[9], 1);
	TextDrawBackgroundColor(CasinoDraw[9], 51);
	TextDrawFont(CasinoDraw[9], 0);
	TextDrawSetProportional(CasinoDraw[9], 1);

	CasinoDraw[10] = TextDrawCreate(552.000000, 343.722259, "usebox");
	TextDrawLetterSize(CasinoDraw[10], 0.000000, 1.401437);
	TextDrawTextSize(CasinoDraw[10], 87.333335, 0.000000);
	TextDrawAlignment(CasinoDraw[10], 1);
	TextDrawColor(CasinoDraw[10], 0);
	TextDrawUseBox(CasinoDraw[10], true);
	TextDrawBoxColor(CasinoDraw[10], 102);
	TextDrawSetShadow(CasinoDraw[10], 0);
	TextDrawSetOutline(CasinoDraw[10], 0);
	TextDrawFont(CasinoDraw[10], 0);

	CasinoDraw[11] = TextDrawCreate(268.000061, 344.296264, "ROUND STARTS IN: TIME");
	TextDrawLetterSize(CasinoDraw[11], 0.201666, 1.205925);
	TextDrawAlignment(CasinoDraw[11], 1);
	TextDrawColor(CasinoDraw[11], -1);
	TextDrawSetShadow(CasinoDraw[11], 0);
	TextDrawSetOutline(CasinoDraw[11], 1);
	TextDrawBackgroundColor(CasinoDraw[11], 51);
	TextDrawFont(CasinoDraw[11], 2);
	TextDrawSetProportional(CasinoDraw[11], 1);

	CasinoDraw[12] = TextDrawCreate(204.333374, 210.151870, "usebox");
	TextDrawLetterSize(CasinoDraw[12], 0.000000, 1.665224);
	TextDrawTextSize(CasinoDraw[12], 116.666656, 0.000000);
	TextDrawAlignment(CasinoDraw[12], 1);
	TextDrawColor(CasinoDraw[12], 0);
	TextDrawUseBox(CasinoDraw[12], true);
	TextDrawBoxColor(CasinoDraw[12], -16777131);
	TextDrawSetShadow(CasinoDraw[12], 0);
	TextDrawSetOutline(CasinoDraw[12], 0);
	TextDrawFont(CasinoDraw[12], 0);

	CasinoDraw[13] = TextDrawCreate(124.666633, 227.318542, "0 users total 0$");
	TextDrawLetterSize(CasinoDraw[13], 0.121666, 0.998518);
	TextDrawAlignment(CasinoDraw[13], 1);
	TextDrawColor(CasinoDraw[13], -1);
	TextDrawSetShadow(CasinoDraw[13], 0);
	TextDrawSetOutline(CasinoDraw[13], 1);
	TextDrawBackgroundColor(CasinoDraw[13], 51);
	TextDrawFont(CasinoDraw[13], 2);
	TextDrawSetProportional(CasinoDraw[13], 1);

	CasinoDraw[14] = TextDrawCreate(365.999938, 210.151809, "usebox");
	TextDrawLetterSize(CasinoDraw[14], 0.000000, 1.665226);
	TextDrawTextSize(CasinoDraw[14], 278.000061, 0.000000);
	TextDrawAlignment(CasinoDraw[14], 1);
	TextDrawColor(CasinoDraw[14], 0);
	TextDrawUseBox(CasinoDraw[14], true);
	TextDrawBoxColor(CasinoDraw[14], 16711765);
	TextDrawSetShadow(CasinoDraw[14], 0);
	TextDrawSetOutline(CasinoDraw[14], 0);
	TextDrawFont(CasinoDraw[14], 0);

	CasinoDraw[15] = TextDrawCreate(291.333404, 226.074081, "0 USERS TOTAL 0$");
	TextDrawLetterSize(CasinoDraw[15], 0.101666, 0.998518);
	TextDrawAlignment(CasinoDraw[15], 1);
	TextDrawColor(CasinoDraw[15], -1);
	TextDrawSetShadow(CasinoDraw[15], 0);
	TextDrawSetOutline(CasinoDraw[15], 1);
	TextDrawBackgroundColor(CasinoDraw[15], 51);
	TextDrawFont(CasinoDraw[15], 2);
	TextDrawSetProportional(CasinoDraw[15], 1);

	CasinoDraw[16] = TextDrawCreate(524.333129, 210.151870, "usebox");
	TextDrawLetterSize(CasinoDraw[16], 0.000000, 1.665226);
	TextDrawTextSize(CasinoDraw[16], 436.333343, 0.000000);
	TextDrawAlignment(CasinoDraw[16], 1);
	TextDrawColor(CasinoDraw[16], 0);
	TextDrawUseBox(CasinoDraw[16], true);
	TextDrawBoxColor(CasinoDraw[16], 170);
	TextDrawSetShadow(CasinoDraw[16], 0);
	TextDrawSetOutline(CasinoDraw[16], 0);
	TextDrawFont(CasinoDraw[16], 0);

	CasinoDraw[17] = TextDrawCreate(451.666625, 226.488876, "0 USERS TOTAL 0$");
	TextDrawLetterSize(CasinoDraw[17], 0.101666, 1.019259);
	TextDrawAlignment(CasinoDraw[17], 1);
	TextDrawColor(CasinoDraw[17], -1);
	TextDrawSetShadow(CasinoDraw[17], 0);
	TextDrawSetOutline(CasinoDraw[17], 1);
	TextDrawBackgroundColor(CasinoDraw[17], 51);
	TextDrawFont(CasinoDraw[17], 2);
	TextDrawSetProportional(CasinoDraw[17], 1);

	CasinoDraw[18] = TextDrawCreate(133.333297, 209.896331, "win-2x");
	TextDrawLetterSize(CasinoDraw[18], 0.350333, 1.500443);
	TextDrawAlignment(CasinoDraw[18], 1);
	TextDrawColor(CasinoDraw[18], -1);
	TextDrawSetShadow(CasinoDraw[18], 0);
	TextDrawSetOutline(CasinoDraw[18], 1);
	TextDrawBackgroundColor(CasinoDraw[18], 51);
	TextDrawFont(CasinoDraw[18], 2);
	TextDrawSetProportional(CasinoDraw[18], 1);
	TextDrawSetSelectable(CasinoDraw[18], true);

	CasinoDraw[19] = TextDrawCreate(296.999877, 210.311126, "win-4x");
	TextDrawLetterSize(CasinoDraw[19], 0.350999, 1.500444);
	TextDrawAlignment(CasinoDraw[19], 1);
	TextDrawColor(CasinoDraw[19], -1);
	TextDrawSetShadow(CasinoDraw[19], 0);
	TextDrawSetOutline(CasinoDraw[19], 1);
	TextDrawBackgroundColor(CasinoDraw[19], 51);
	TextDrawFont(CasinoDraw[19], 2);
	TextDrawSetProportional(CasinoDraw[19], 1);
	TextDrawSetSelectable(CasinoDraw[19], true);

	CasinoDraw[20] = TextDrawCreate(457.333404, 210.311126, "win-2x");
	TextDrawLetterSize(CasinoDraw[20], 0.350333, 1.500444);
	TextDrawAlignment(CasinoDraw[20], 1);
	TextDrawColor(CasinoDraw[20], -1);
	TextDrawSetShadow(CasinoDraw[20], 0);
	TextDrawSetOutline(CasinoDraw[20], 1);
	TextDrawBackgroundColor(CasinoDraw[20], 51);
	TextDrawFont(CasinoDraw[20], 2);
	TextDrawSetProportional(CasinoDraw[20], 1);
	TextDrawSetSelectable(CasinoDraw[20], true);

	CasinoDraw[21] = TextDrawCreate(366.666778, 326.715240, "usebox");
	TextDrawLetterSize(CasinoDraw[21], 0.000000, 1.519134);
	TextDrawTextSize(CasinoDraw[21], 277.666778, 0.000000);
	TextDrawAlignment(CasinoDraw[21], 1);
	TextDrawColor(CasinoDraw[21], 0);
	TextDrawUseBox(CasinoDraw[21], true);
	TextDrawBoxColor(CasinoDraw[21], 102);
	TextDrawSetShadow(CasinoDraw[21], 0);
	TextDrawSetOutline(CasinoDraw[21], 0);
	TextDrawFont(CasinoDraw[21], 0);

	CasinoDraw[22] = TextDrawCreate(308.333251, 326.459228, "EXIT");
	TextDrawLetterSize(CasinoDraw[22], 0.301000, 1.500444);
	TextDrawAlignment(CasinoDraw[22], 1);
	TextDrawColor(CasinoDraw[22], -1);
	TextDrawSetShadow(CasinoDraw[22], 0);
	TextDrawSetOutline(CasinoDraw[22], 1);
	TextDrawBackgroundColor(CasinoDraw[22], 51);
	TextDrawFont(CasinoDraw[22], 2);
	TextDrawSetProportional(CasinoDraw[22], 1);
	TextDrawSetSelectable(CasinoDraw[22], true);
	return 1;
}
//==============================================================================
public OnFilterScriptExit()
{
    print("\n--------------------------------------");
	print("[FilterScrips]: By alecs.");
	print("[FilterScrips]: By alecs.");
	print("--------------------------------------\n");
	return 1;
}
//==============================================================================
public OnPlayerConnect(playerid)
{
    GetPlayerName(playerid, pData[playerid][pName], MAX_PLAYER_NAME);
    
    RouletteInGame[playerid] = 0; // казик
    
    CasinoDrawPlayer[playerid][0] = CreatePlayerTextDraw(playerid,91.666679, 344.296356, "BALANCE: SUMMA");
	PlayerTextDrawLetterSize(playerid,CasinoDrawPlayer[playerid][0], 0.201666, 1.205925);
	PlayerTextDrawAlignment(playerid,CasinoDrawPlayer[playerid][0], 1);
	PlayerTextDrawColor(playerid,CasinoDrawPlayer[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid,CasinoDrawPlayer[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid,CasinoDrawPlayer[playerid][0], 1);
	PlayerTextDrawBackgroundColor(playerid,CasinoDrawPlayer[playerid][0], 51);
	PlayerTextDrawFont(playerid,CasinoDrawPlayer[playerid][0], 2);
	PlayerTextDrawSetProportional(playerid,CasinoDrawPlayer[playerid][0], 1);

	CasinoDrawPlayer[playerid][1] = CreatePlayerTextDraw(playerid,438.333282, 343.881561, "BET: NONE");
	PlayerTextDrawLetterSize(playerid,CasinoDrawPlayer[playerid][1], 0.201000, 1.205926);
	PlayerTextDrawAlignment(playerid,CasinoDrawPlayer[playerid][1], 1);
	PlayerTextDrawColor(playerid,CasinoDrawPlayer[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid,CasinoDrawPlayer[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid,CasinoDrawPlayer[playerid][1], 1);
	PlayerTextDrawBackgroundColor(playerid,CasinoDrawPlayer[playerid][1], 51);
	PlayerTextDrawFont(playerid,CasinoDrawPlayer[playerid][1], 2);
	PlayerTextDrawSetProportional(playerid,CasinoDrawPlayer[playerid][1], 1);
	return 1;
}
//==============================================================================
public OnPlayerUpdate(playerid)
{
    if(gSelected[playerid] == true) SelectTextDrawEx(playerid,gSelectColor[playerid]);
	return 1;
}
//==============================================================================
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == 5551)
	{
		if(!response) return zmidialog[playerid] = 0;
		if(strval(inputtext) < 10000 || strval(inputtext) > 1000000) return ShowPlayerDialog(playerid, 5551, DIALOG_STYLE_INPUT, "Enter a bet","Introdu suma pe care vrei sa o pariezi:", "OK", "Cancel"),SendClientMessage(playerid,-1,"Poti paria intre 10.000$ si 1.000.000$");
		if(GetPlayerMoney(playerid) < strval(inputtext)) return SendClientMessage(playerid,-1,"You don't have enough money.");
		betsumma[playerid] = strval(inputtext),GivePlayerMoney(playerid,-betsumma[playerid]),totalbet[0] ++,totalsumma[0] +=betsumma[playerid];
		new string[128];
		format(string,sizeof(string),"Ai pariat %d$ pe {FF0000}RED 2x WIN",betsumma[playerid]);
		SendClientMessage(playerid,-1,string);
		format(string, sizeof(string), "%d users total %d$", totalbet[0],totalsumma[0]);
		TextDrawSetString(CasinoDraw[13], string);
		format(string, sizeof(string), "BET: %d on red", betsumma[playerid]);
		PlayerTextDrawSetString(playerid,CasinoDrawPlayer[playerid][1], string);
		betplayer[playerid] = 14,TotalBet ++,zmidialog[playerid] = 0,PlayerPlaySound(playerid,4203,0.0,0.0,0.0);
		return true;
	}
	if(dialogid == 5552)
	{
		if(!response) return zmidialog[playerid] = 0;
		if(strval(inputtext) < 10000 || strval(inputtext) > 1000000) return ShowPlayerDialog(playerid, 5552, DIALOG_STYLE_INPUT, "Enter a bet:","Introdu suma pe care vrei sa o pariezi:", "OK", "Cancel"),SendClientMessage(playerid,-1,"Poti paria intre 10.000$ si 1.000.000$");
		if(GetPlayerMoney(playerid) < strval(inputtext)) return SendClientMessage(playerid,-1,"You don't have enough money.");
		betsumma[playerid] = strval(inputtext),GivePlayerMoney(playerid,-betsumma[playerid]),totalbet[1] ++,totalsumma[1] +=betsumma[playerid];
		new string[128];
		format(string,sizeof(string),"Ai pariat %d$ pe {009900}GREEN 14x WIN",betsumma[playerid]);
		SendClientMessage(playerid,-1,string);
		format(string, sizeof(string), "%d users total %d$", totalbet[1],totalsumma[1]);
		TextDrawSetString(CasinoDraw[15], string);
		format(string, sizeof(string), "BET: %d on green", betsumma[playerid]);
		PlayerTextDrawSetString(playerid,CasinoDrawPlayer[playerid][1], string);
		betplayer[playerid] = 4,TotalBet ++,zmidialog[playerid] = 0,PlayerPlaySound(playerid,4203,0.0,0.0,0.0);
		return true;
	}
	if(dialogid == 5553)
	{
		if(!response) return zmidialog[playerid] = 0;
		if(strval(inputtext) < 10000 || strval(inputtext) > 1000000) return ShowPlayerDialog(playerid, 5553, DIALOG_STYLE_INPUT, "Enter a bet:","Introdu suma pe care vrei sa o pariezi:", "OK", "Cancel"),SendClientMessage(playerid,-1,"Poti paria intre 10.000$ si 1.000.000$");
		if(GetPlayerMoney(playerid) < strval(inputtext)) return SendClientMessage(playerid,-1,"You don't have enough money.");
		betsumma[playerid] = strval(inputtext),GivePlayerMoney(playerid,-betsumma[playerid]),totalbet[2] ++,totalsumma[2] +=betsumma[playerid];
		new string[128];
		format(string,sizeof(string),"Ai pariat %d$ pe {1a1a1a}BLACK 2x WIN.",betsumma[playerid]);
		SendClientMessage(playerid,-1,string);
		format(string, sizeof(string), "%d users total %d$", totalbet[2],totalsumma[2]);
		TextDrawSetString(CasinoDraw[17], string);
		format(string, sizeof(string), "BET: %d on black", betsumma[playerid]);
		PlayerTextDrawSetString(playerid,CasinoDrawPlayer[playerid][1], string);
		betplayer[playerid] = 10,TotalBet ++,zmidialog[playerid] = 0,PlayerPlaySound(playerid,4203,0.0,0.0,0.0);
		return true;
	}
	return 1;
}
//================================[Comenzi]=====================================
CMD:roulette(playerid,params[])
{
    if(IsPlayerInRangeOfPoint(playerid, 5.0, 1954.4076,1039.7755,992.8594) || IsPlayerInRangeOfPoint(playerid, 5.0, 1950.8633,1041.6986,992.8594) || IsPlayerInRangeOfPoint(playerid, 5.0, 1956.5675,1035.7427,992.8594)) return SendClientMessage(playerid,-1, "Nu esti la o ruleta.");
    if(RouletteInGame[playerid] == 1) return SendClientMessage(playerid,-1,"Deja joci la ruleta.");
    for(new t; t<23; t++) TextDrawShowForPlayer(playerid,CasinoDraw[t]),PlayerTextDrawShow(playerid,CasinoDrawPlayer[playerid][0]),PlayerTextDrawShow(playerid,CasinoDrawPlayer[playerid][1]);
    SelectTextDrawEx(playerid,0xFFFFFFFF),RouletteInGame[playerid] = 1;
    return true;
}

CMD:podkrut(playerid,params[])
{
	if(sscanf(params, "d", params[0])) return SendClientMessage(playerid, -1, "Использование: /podkrut [Число(0-25 - BLACK | 26-28 - GREEN | 29-55 RED)]");
	if(params[0] < 0 || params[0] > 55) return SendClientMessage(playerid,-1,"Нельзя меньше 0 и больше 55");
	new string[128];
	if(podkrut != 0)
	{
        format(string,sizeof(string),"Кто-то уже подкрутил на %d число",podkrut);
	    SendClientMessage(playerid,-1,string);
		return true;
	}
	podkrut = params[0];
	format(string,sizeof(string),"Вы успешно подкрутили число %d",podkrut);
	SendClientMessage(playerid,-1,string);
    return true;
}
//================================[De adaugat]===============================
public OnPlayerClickTextDraw(playerid, Text:clickedid)
{
    if(clickedid == Text:INVALID_TEXT_DRAW)
	{
		if(gSelected[playerid] == true) SelectTextDraw(playerid,gSelectColor[playerid]);
		return 1;
	}
	if(clickedid == Text:CasinoDraw[18])
	{
		if(RouletteStatus == 1 || betsumma[playerid] != 0) return SendClientMessage(playerid,-1,"You already placed a bet.");
		if(zmidialog[playerid] == 1) return true;
		ShowPlayerDialog(playerid, 5551, DIALOG_STYLE_INPUT, "Enter a bet:","Introdu suma pe care vrei sa o pariezi:", "OK", "Cancel"),zmidialog[playerid] = 1;
	} // RED
	if(clickedid == Text:CasinoDraw[19])
	{
		if(RouletteStatus == 1 || betsumma[playerid] != 0) return SendClientMessage(playerid,-1,"You already placed a bet.");
		if(zmidialog[playerid] == 1) return true;
		ShowPlayerDialog(playerid, 5552, DIALOG_STYLE_INPUT, "Enter a bet:","Introdu suma pe care vrei sa o pariezi:", "OK", "Cancel"),zmidialog[playerid] = 1;
	} // GREEN
	if(clickedid == Text:CasinoDraw[20])
	{
		if(RouletteStatus == 1 || betsumma[playerid] != 0) return SendClientMessage(playerid,-1,"You already placed a bet.");
		if(zmidialog[playerid] == 1) return true;
		ShowPlayerDialog(playerid, 5553, DIALOG_STYLE_INPUT, "Enter a bet:","Introdu suma pe care vrei sa o pariezi:", "OK", "Cancel"),zmidialog[playerid] = 1;
	} // BLACK
	if(clickedid == Text:CasinoDraw[22])
	{
        if(zmidialog[playerid] == 1) return true;
		if(RouletteStatus == 1) return SendClientMessage(playerid,-1,"Asteapta pana ce se invarte ruleta.");
		RouletteInGame[playerid] = 0,PlayerTextDrawSetString(playerid,CasinoDrawPlayer[playerid][1], "BET: NONE");
		if(TotalBet > 0) TotalBet --;
	    for(new x; x<23; x++) TextDrawHideForPlayer(playerid,CasinoDraw[x]),CancelSelectTextDrawEx(playerid),PlayerTextDrawHide(playerid,CasinoDrawPlayer[playerid][0]),PlayerTextDrawHide(playerid,CasinoDrawPlayer[playerid][1]);
	    new string[64];
	    if(betplayer[playerid] == 10)
		{
			totalbet[2] --,totalsumma[2] -= betsumma[playerid];
			if(totalbet[2] < 0) totalbet[2] = 0;
			format(string, sizeof(string), "%d users total %d$", totalbet[2],totalsumma[2]);
			TextDrawSetString(CasinoDraw[17], string);
		}
		if(betplayer[playerid] == 14)
		{
			totalbet[0] --,totalsumma[0] -= betsumma[playerid];
			if(totalbet[0] < 0) totalbet[0] = 0;
			format(string, sizeof(string), "%d users total %d$", totalbet[0],totalsumma[0]);
		    TextDrawSetString(CasinoDraw[13], string);
		}
		if(betplayer[playerid] == 4)
		{
			totalbet[1] --,totalsumma[1] -= betsumma[playerid];
			if(totalbet[1] < 0) totalbet[1] = 0;
			format(string, sizeof(string), "%d users total %d$", totalbet[1],totalsumma[1]);
            TextDrawSetString(CasinoDraw[15], string);
		}
	    GivePlayerMoney(playerid,betsumma[playerid]),betsumma[playerid] = 0;
	} // exit
    return 1;
}
//------------------------------------------------------------------------------
stock SelectTextDrawEx(playerid,color)
{
	gSelected[playerid] = true;
	gSelectColor[playerid] = color;
	SelectTextDraw(playerid,color);
	return 1;
}
//------------------------------------------------------------------------------
stock CancelSelectTextDrawEx(playerid)
{
	gSelected[playerid] = false;
	CancelSelectTextDraw(playerid);
	return 1;
}
//------------------------------------------------------------------------------
forward RouletteGame1();
public RouletteGame1()
{
	if(RouletteTime2 == 10 && podkrut == 0) prohod = random(55);
	else if(RouletteTime2 == 10 && podkrut != 0) prohod = podkrut;
	step ++;
	switch(prohod)
	{
        case 0..25:
		{
			switch(step)
			{
				case 1: prohodtime = SetTimer("TextDrawProhod1", 450, true),TextDrawSetString(CasinoDraw[11], "Rolling roulette..");
				case 10:
				{
                    foreach(new i:Player)
					{
	                    HideCasino(i);
						TextDrawBoxColor(CasinoDraw[1], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[2], 0x000000AA),TextDrawBoxColor(CasinoDraw[3], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[4], 0x000000AA),TextDrawBoxColor(CasinoDraw[5], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[6], 0x000000AA),TextDrawBoxColor(CasinoDraw[7], 0xFF0000AA);
						ShowCasino(i);
                        if(betplayer[i] == 10)
                        {
							SendClientMessage(i,-1,"You have won 2x money.");
							GivePlayerMoney(i,betsumma[i]*2),PlayerPlaySound(i,43001,0.0,0.0,0.0);
						} else if(betplayer[i] == 14 || betplayer[i] == 4) SendClientMessage(i,-1,"The roullete hands on BLACK"),PlayerPlaySound(i,1085,0.0,0.0,0.0);
                        betsumma[i] = 0,betplayer[i] = 0,PlayerTextDrawSetString(i,CasinoDrawPlayer[i][1], "BET: NONE");
					}
					RouletteTime = 20,RouletteStatus = 0,TotalBet = 0,step = 0,step2 = 0,step3 = 0,podkrut = 0;
					for(new i; i<3; i++) totalbet[i] = 0;
					for(new i; i<3; i++) totalsumma[i] = 0;
					KillTimer(playtime),KillTimer(prohodtime);
					TextDrawSetString(CasinoDraw[11], "Win black");
					TextDrawSetString(CasinoDraw[13], "0 users total 0$");
					TextDrawSetString(CasinoDraw[15], "0 users total 0$");
					TextDrawSetString(CasinoDraw[17], "0 users total 0$");
					return true;
				}
			}
		}
		case 26..28:
		{
			switch(step)
			{
				case 1: prohodtime = SetTimer("TextDrawProhod2", 450, true),TextDrawSetString(CasinoDraw[11], "Rolling roulette..");
				case 10:
				{
                    foreach(new i:Player)
					{
	                    HideCasino(i);
						TextDrawBoxColor(CasinoDraw[1], 0x000000AA),TextDrawBoxColor(CasinoDraw[2], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[3], 0x000000AA),TextDrawBoxColor(CasinoDraw[4], 0x00FF00AA),TextDrawBoxColor(CasinoDraw[5], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[6], 0x000000AA),TextDrawBoxColor(CasinoDraw[7], 0xFF0000AA);
						ShowCasino(i);
                        if(betplayer[i] == 4)
                        {
							SendClientMessage(i,-1,"You have won 14x money.");
							GivePlayerMoney(i,betsumma[i]*14),PlayerPlaySound(i,43001,0.0,0.0,0.0);
						} else if(betplayer[i] == 10 || betplayer[i] == 14) SendClientMessage(i,-1,"The roulette hands on GREEN."),PlayerPlaySound(i,1085,0.0,0.0,0.0);
						betsumma[i] = 0,betplayer[i] = 0,PlayerTextDrawSetString(i,CasinoDrawPlayer[i][1], "BET: NONE");
					}
					RouletteTime = 20,TotalBet = 0,RouletteStatus = 0,step = 0,step2 = 0,step3 = 0,podkrut = 0;
                    for(new i; i<3; i++) totalbet[i] = 0;
					for(new i; i<3; i++) totalsumma[i] = 0;
					KillTimer(playtime),KillTimer(prohodtime);
					TextDrawSetString(CasinoDraw[11], "Win Green");
					TextDrawSetString(CasinoDraw[13], "0 users total 0$");
					TextDrawSetString(CasinoDraw[15], "0 users total 0$");
					TextDrawSetString(CasinoDraw[17], "0 users total 0$");
					return true;
				}
			}
		}
		case 29..55:
		{
			switch(step)
			{
				case 1: prohodtime = SetTimer("TextDrawProhod3", 450, true),TextDrawSetString(CasinoDraw[11], "Rolling roulette..");
				case 10:
				{
                    foreach(new i:Player)
					{
	                    HideCasino(i);
						TextDrawBoxColor(CasinoDraw[1], 0x000000AA),TextDrawBoxColor(CasinoDraw[2], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[3], 0x000000AA),TextDrawBoxColor(CasinoDraw[4], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[5], 0x000000AA),TextDrawBoxColor(CasinoDraw[6], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[7], 0x000000AA);
						ShowCasino(i);
                        if(betplayer[i] == 14)
                        {
							SendClientMessage(i,-1,"You have won 2x bet money.");
							GivePlayerMoney(i,betsumma[i]*2),PlayerPlaySound(i,43001,0.0,0.0,0.0);
						} else if(betplayer[i] == 10 || betplayer[i] == 4) SendClientMessage(i,-1,"The roulette hands on RED."),PlayerPlaySound(i,1085,0.0,0.0,0.0);
						betsumma[i] = 0,betplayer[i] = 0,PlayerTextDrawSetString(i,CasinoDrawPlayer[i][1], "BET: NONE");
					}
					RouletteTime = 20,TotalBet = 0,RouletteStatus = 0,step = 0,step2 = 0,step3 = 0,podkrut = 0;
                    for(new i; i<3; i++) totalbet[i] = 0;
					for(new i; i<3; i++) totalsumma[i] = 0;
					KillTimer(playtime),KillTimer(prohodtime);
					TextDrawSetString(CasinoDraw[11], "Win red");
					TextDrawSetString(CasinoDraw[13], "0 users total 0$");
					TextDrawSetString(CasinoDraw[15], "0 users total 0$");
					TextDrawSetString(CasinoDraw[17], "0 users total 0$");
					return true;
				}
			}
		}
		default: foreach(new i:Player) SendClientMessage(i,-1,"Игра начинается.");
	}
	return true;
}
//------------------------------------------------------------------------------
stock ShowCasino(playerid)
{
	if(RouletteInGame[playerid] == 0) return true;
	TextDrawShowForPlayer(playerid,CasinoDraw[1]);
	TextDrawShowForPlayer(playerid,CasinoDraw[2]);
	TextDrawShowForPlayer(playerid,CasinoDraw[3]);
	TextDrawShowForPlayer(playerid,CasinoDraw[4]);
	TextDrawShowForPlayer(playerid,CasinoDraw[5]);
	TextDrawShowForPlayer(playerid,CasinoDraw[6]);
	TextDrawShowForPlayer(playerid,CasinoDraw[7]);
	return true;
}
//------------------------------------------------------------------------------
stock HideCasino(playerid)
{
    if(RouletteInGame[playerid] == 0) return true;
	TextDrawHideForPlayer(playerid,CasinoDraw[1]);
	TextDrawHideForPlayer(playerid,CasinoDraw[2]);
	TextDrawHideForPlayer(playerid,CasinoDraw[3]);
	TextDrawHideForPlayer(playerid,CasinoDraw[4]);
	TextDrawHideForPlayer(playerid,CasinoDraw[5]);
	TextDrawHideForPlayer(playerid,CasinoDraw[6]);
	TextDrawHideForPlayer(playerid,CasinoDraw[7]);
	return true;
}
//------------------------------------------------------------------------------
forward TextDrawProhod1();
public TextDrawProhod1() // RED
{
	if(step2 == 0) step2 ++;
	switch(step2)
	{
		case 1:
		{
            foreach(new i:Player)
            {
				HideCasino(i);
				TextDrawBoxColor(CasinoDraw[1], 0x000000AA),TextDrawBoxColor(CasinoDraw[2], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[3], 0x000000AA),TextDrawBoxColor(CasinoDraw[4], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[5], 0x000000AA),TextDrawBoxColor(CasinoDraw[6], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[7], 0x000000AA);
				ShowCasino(i),PlayerPlaySound(i,33401,0.0,0.0,0.0),step2 = 2;
			}
		}
		case 2:
		{
            foreach(new i:Player)
            {
				HideCasino(i);
				TextDrawBoxColor(CasinoDraw[1], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[2], 0x000000AA),TextDrawBoxColor(CasinoDraw[3], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[4], 0x000000AA),TextDrawBoxColor(CasinoDraw[5], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[6], 0x000000AA),TextDrawBoxColor(CasinoDraw[7], 0xFF0000AA);
				ShowCasino(i),PlayerPlaySound(i,33401,0.0,0.0,0.0),step2 = 1;
			}
		}
	}
	return true;
}
//------------------------------------------------------------------------------
forward TextDrawProhod2();
public TextDrawProhod2() // GREEN
{
	if(step2 == 0) step2 = 1;
	step3 ++;
	switch(step2)
	{
		case 1:
		{
            foreach(new i:Player)
            {
				HideCasino(i);
				TextDrawBoxColor(CasinoDraw[1], 0x000000AA),TextDrawBoxColor(CasinoDraw[2], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[3], 0x000000AA),TextDrawBoxColor(CasinoDraw[4], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[5], 0x000000AA),TextDrawBoxColor(CasinoDraw[6], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[7], 0x000000AA);
				ShowCasino(i),PlayerPlaySound(i,33401,0.0,0.0,0.0),step2 = 2;
			}
		}
		case 2:
		{
            foreach(new i:Player)
            {
				HideCasino(i);
				TextDrawBoxColor(CasinoDraw[1], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[2], 0x000000AA),TextDrawBoxColor(CasinoDraw[3], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[4], 0x000000AA),TextDrawBoxColor(CasinoDraw[5], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[6], 0x000000AA),TextDrawBoxColor(CasinoDraw[7], 0xFF0000AA);
				ShowCasino(i),PlayerPlaySound(i,33401,0.0,0.0,0.0);
				if(step3 == 16) step2 = 3;
				else step2 = 1;
			}
		}
		case 3:
		{
            foreach(new i:Player)
            {
				HideCasino(i);
				TextDrawBoxColor(CasinoDraw[1], 0x00FF00AA),TextDrawBoxColor(CasinoDraw[2], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[3], 0x000000AA),TextDrawBoxColor(CasinoDraw[4], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[5], 0x000000AA),TextDrawBoxColor(CasinoDraw[6], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[7], 0x000000AA);
				ShowCasino(i),PlayerPlaySound(i,33401,0.0,0.0,0.0);
				step2 = 4;
			}
		}
		case 4:
		{
            foreach(new i:Player)
            {
				HideCasino(i);
				TextDrawBoxColor(CasinoDraw[1], 0x000000AA),TextDrawBoxColor(CasinoDraw[2], 0x00FF00AA),TextDrawBoxColor(CasinoDraw[3], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[4], 0x000000AA),TextDrawBoxColor(CasinoDraw[5], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[6], 0x000000AA),TextDrawBoxColor(CasinoDraw[7], 0xFF0000AA);
				ShowCasino(i),PlayerPlaySound(i,33401,0.0,0.0,0.0);
				step2 = 5;
			}
		}
		case 5:
		{
            foreach(new i:Player)
            {
				HideCasino(i);
				TextDrawBoxColor(CasinoDraw[1], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[2], 0x000000AA),TextDrawBoxColor(CasinoDraw[3], 0x00FF00AA),TextDrawBoxColor(CasinoDraw[4], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[5], 0x000000AA),TextDrawBoxColor(CasinoDraw[6], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[7], 0x000000AA);
				ShowCasino(i),PlayerPlaySound(i,33401,0.0,0.0,0.0);
			}
		}
	}
	return true;
}
//------------------------------------------------------------------------------
forward TextDrawProhod3();
public TextDrawProhod3() // BLACK
{
	if(step2 == 0) step2 ++;
	switch(step2)
	{
		case 1:
		{
            foreach(new i:Player)
            {
				HideCasino(i);
				TextDrawBoxColor(CasinoDraw[1], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[2], 0x000000AA),TextDrawBoxColor(CasinoDraw[3], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[4], 0x000000AA),TextDrawBoxColor(CasinoDraw[5], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[6], 0x000000AA),TextDrawBoxColor(CasinoDraw[7], 0xFF0000AA);
				ShowCasino(i),PlayerPlaySound(i,33401,0.0,0.0,0.0),step2 = 2;
			}
		}
		case 2:
		{
            foreach(new i:Player)
            {
				HideCasino(i);
				TextDrawBoxColor(CasinoDraw[1], 0x000000AA),TextDrawBoxColor(CasinoDraw[2], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[3], 0x000000AA),TextDrawBoxColor(CasinoDraw[4], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[5], 0x000000AA),TextDrawBoxColor(CasinoDraw[6], 0xFF0000AA),TextDrawBoxColor(CasinoDraw[7], 0x000000AA);
				ShowCasino(i),PlayerPlaySound(i,33401,0.0,0.0,0.0),step2 = 1;
			}
		}
	}
	return true;
}
//------------------------------------------------------------------------------
forward GlobalServerTimer();
public GlobalServerTimer()
{
	foreach(new i:Player)
	{
		if(RouletteInGame[i] == 1)
		{
            new newtext[24];
		    format(newtext, sizeof(newtext), "Balance: %d", GetPlayerMoney(i));
		    PlayerTextDrawSetString(i,CasinoDrawPlayer[i][0], newtext);
		}
	}
	if(RouletteTime2 >= 1 && RouletteStatus == 1) RouletteTime2 --;
	if(RouletteTime == 0 && RouletteStatus == 0) TextDrawSetString(CasinoDraw[11], "Waiting to rolling..."),RouletteStatus = 1,RouletteTime2 = 11,playtime = SetTimer("RouletteGame1", 1000, true);
	if(RouletteTime >= 1)
	{
	    RouletteTime --;
	    if(TotalBet == 0) return TextDrawSetString(CasinoDraw[11], "Waiting for bets..."),RouletteTime = 20;
	    new newtextt[24];
		format(newtextt, sizeof(newtextt), "ROUND STARTS IN: 00:%d", RouletteTime);
		TextDrawSetString(CasinoDraw[11], newtextt);
	}
	return 1;
}

/* Succes cu gm-ul sper ca va place ce am facut e o munca grea 
Subscribe la canal
https://www.youtube.com/channel/UCaZdv88H1IIMuY38fuDy66A?view_as=subscriber
"*/