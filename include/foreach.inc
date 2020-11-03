#if defined _foreach_included
	#endinput
#endif
#define _foreach_included

/*----------------------------------------------------------------------------*/

#define _Y_ITER_ARRAY: _:_Y_ITER_C0:
#define _Y_ITER_ARRAY_SIZE(%1) _:_Y_ITER_C1:_Y_ITER_C2:sizeof %1@YSII_Ag-1

#define _Y_ITER_C0:%0[%1]@YSII_%4g%3) %0@YSII_%4g[%1]%3)
#define _Y_ITER_C1:_Y_ITER_C2:%0[%1]@YSII_Ag%3) %0@YSII_Ag[]%3)
#define _Y_ITER_C2:sizeof%0(%1)@YSII_Ag-1;_:(%2=_Y_ITER_ARRAY:%3(%4)@YSII_Ag[%5])!=_Y_ITER_ARRAY_SIZE(%6);) -1;_:(%2=%3@YSII_Ag(%4,%5))!=-1;)
#define _Y_ITER_C3:%0[%1]@YSII_Cg,%2[%3]@YSII_Ag[%4]={%5} _Y_ITER_C3:%0@YSII_Cg[%1],%0@YSII_Ag[%1][%4]

#define new%0|||%9|||%1:%2||| %9|||%0|||%1|||%2|||
#define Y_FOREACH_THIRD|||%0|||%1|||%2||| %1=Y_FOREACH_FIFTH|||Y_FOREACH_FOURTH|||%1:%2|||
#define Y_FOREACH_FOURTH|||%0=Y_FOREACH_FIFTH|||%1|||%2||| new Y_FOREACH_SIXTH;%0|||Y_FOREACH_SEVENTH|||%2|||
#define Y_FOREACH_SEVENTH|||%9Y_FOREACH_SIXTH;%0|||%1|||%2||| new %0:%1=%0:_Y_ITER_ARRAY_SIZE(%2);_:(%1=_Y_ITER_ARRAY:%2@YSII_Ag[%1])!=_Y_ITER_ARRAY_SIZE(%2);
#define Y_FOREACH_SIXTH;%0|||Y_FOREACH_SEVENTH|||%2||| %0=_Y_ITER_ARRAY_SIZE(%2);_:(%0=_Y_ITER_ARRAY:%2@YSII_Ag[%0])!=_Y_ITER_ARRAY_SIZE(%2);
#define Y_FOREACH_FIFTH|||Y_FOREACH_FOURTH|||%1:%2||| _Y_ITER_ARRAY_SIZE(%2);_:(%1=_Y_ITER_ARRAY:%2@YSII_Ag[%1])!=_Y_ITER_ARRAY_SIZE(%2);
#define Y_FOREACH_SECOND|||Y_FOREACH_THIRD|||%1,%2||| %2=_Y_ITER_ARRAY_SIZE(%1);_:(%2=_Y_ITER_ARRAY:%1@YSII_Ag[%2])!=_Y_ITER_ARRAY_SIZE(%1);

/*----------------------------------------------------------------------------*\
Array:
	IteratorArray
Notes:
	Creates a new iterator array start/array pair.
\*----------------------------------------------------------------------------*/

#define IteratorArray:%1[%2]<%3> %1@YSII_Cg[%2],%1@YSII_Ag[%2][%3+1]//,%1@YSII_Rg[%2][%3+1]

/*----------------------------------------------------------------------------*\
Array:
	Iterator
Notes:
	Creates a new iterator start/array pair.
\*----------------------------------------------------------------------------*/

#define Iterator:%1<%2> _Y_ITER_C3:%1@YSII_Cg,%1@YSII_Ag[(%2)+1]={(%2)*2,(%2)*2-1,...}

/*----------------------------------------------------------------------------*\
Function:
	Iter_Init
Params:
	iter - Name of the iterator array to initialise.
Return:
	-
Notes:
	Wrapper for Iter_InitInternal.

native Iter_Init(IteratorArray:Name[]<>);

\*----------------------------------------------------------------------------*/

#define Iter_Init(%1) Iter_InitInternal(%1@YSII_Ag,sizeof %1@YSII_Ag,sizeof %1@YSII_Ag[]-1)

/*----------------------------------------------------------------------------*\
Function:
	Iter_Add
Params:
	iter - Name of the iterator to add the data to.
	value - Value to add to the iterator.
Return:
	-
Notes:
	Wrapper for Iter_AddInternal.

native Iter_Add(Iterator:Name<>, value);

\*----------------------------------------------------------------------------*/

#define Iter_Add(%1,%2) Iter_AddInternal(_Y_ITER_ARRAY:%1@YSII_Cg,_Y_ITER_ARRAY:%1@YSII_Ag,%2,_Y_ITER_ARRAY_SIZE(%1))

/*----------------------------------------------------------------------------*\
Function:
	Iter_Free
Params:
	iter - Name of the iterator to get the first free slot in.
Return:
	-for
Notes:
	Wrapper for Iter_FreeInternal.

native Iter_Free(Iterator:Name<>);

\*----------------------------------------------------------------------------*/

#define Iter_Free(%1) Iter_FreeInternal(_Y_ITER_ARRAY:%1@YSII_Ag,_Y_ITER_ARRAY_SIZE(%1))

/*----------------------------------------------------------------------------*\
Function:
	Iter_Remove
Params:
	iter - Name of the iterator to remove data from.
	value - Data to remove.
Return:
	-
Notes:
	Wrapper for Iter_RemoveInternal.

native Iter_Remove(Iterator:Name<>, value);

\*----------------------------------------------------------------------------*/

#define Iter_Remove(%1,%2) Iter_RemoveInternal(_Y_ITER_ARRAY:%1@YSII_Cg,_Y_ITER_ARRAY:%1@YSII_Ag,%2,_Y_ITER_ARRAY_SIZE(%1))

/*----------------------------------------------------------------------------*\
Function:
	Iter_Contains
Params:
	iter - Name of the iterator to check membership of.
	value - Value to check.
Return:
	-
Notes:
	Checks if the given value is in the given iterator.

native Iter_Remove(Iterator:Name<>, value);

\*----------------------------------------------------------------------------*/

#define Iter_Contains(%1,%2) Iter_ContainsInternal(_Y_ITER_ARRAY:%1@YSII_Ag,%2,_Y_ITER_ARRAY_SIZE(%1))

/*----------------------------------------------------------------------------*\
Function:
	Iter_SafeRemove
Params:
	iter - Name of the iterator to remove data from.
	value - Data to remove.
	next - Container for the pointer to the next element.
Return:
	-
Notes:
	Wrapper for Iter_SafeRemoveInternal.  Common use:
	
	Iter_SafeRemove(iter, i, i);

native Iter_SafeRemove(Iterator:Name<>, value, &next);

\*----------------------------------------------------------------------------*/

#define Iter_SafeRemove(%1,%2,%3) Iter_SafeRemoveInternal(_Y_ITER_ARRAY:%1@YSII_Cg,_Y_ITER_ARRAY:%1@YSII_Ag,%2,%3,_Y_ITER_ARRAY_SIZE(%1))

/*----------------------------------------------------------------------------*\
Function:
	Iter_Random
Params:
	iter - Name of the iterator to get a random slot from.
Return:
	-
Notes:
	Wrapper for Iter_RandomInternal.

native Iter_Random(Iterator:Name<>);

\*----------------------------------------------------------------------------*/

#define Iter_Random(%1) Iter_RandomInternal(_Y_ITER_ARRAY:%1@YSII_Cg,_Y_ITER_ARRAY:%1@YSII_Ag,_Y_ITER_ARRAY_SIZE(%1))

/*----------------------------------------------------------------------------*\
Function:
	Iter_Count
Params:
	iter - Name of the iterator to get a random slot from4.
Return:
	-
Notes:
	Returns the number of items in this iterator.

native Iter_Count(Iterator:Name<>);

\*----------------------------------------------------------------------------*/

#define Iter_Count(%1) (_Y_ITER_ARRAY:%1@YSII_Cg)

/*----------------------------------------------------------------------------*\
Function:
	Iter_Clear
Params:
	iter - Name of the iterator empty.
Return:
	-
Notes:
	Wrapper for Iter_ClearInternal.

native Iter_Clear(IteratorArray:Name[]<>);

\*----------------------------------------------------------------------------*/

#define Iter_Clear(%1) Iter_ClearInternal(_Y_ITER_ARRAY:%1@YSII_Cg,_Y_ITER_ARRAY:%1@YSII_Ag,_Y_ITER_ARRAY_SIZE(%1))

/*----------------------------------------------------------------------------*\
Function:
	foreach
Params:
	data - Data to iterate through.
	as - Variable to set value to.
Return:
	-
Notes:
	Not exactly the same as PHP foreach, just iterates through a list and
	returns the value of the current slot but uses that slot as the next index
	too.  Variables must be in the form @YSII_<gname>S for the start index and
	@YSII_<gname>A for the data array where <name> is what's entered in data.
\*----------------------------------------------------------------------------*/

#define foreach%1(%0) for(new Y_FOREACH_SECOND|||Y_FOREACH_THIRD|||%0|||)

/*----------------------------------------------------------------------------*\
Function:
	foreachex
Params:
	data - Data to iterate through.
	as - Variable to set value to.
Return:
	-
Notes:
	Similar to foreach but does not declare a new variable for the iterator.
\*----------------------------------------------------------------------------*/

#define foreachex(%1,%2) foreach(%2:%1)

/*----------------------------------------------------------------------------*\
Function:
	Iter_RandomInternal
Params:
	count - Number of items in the iterator.
	array[] - Iterator data.
	size - Size of the iterator.
Return:
	-
Notes:
	Returns a random value from an iterator.
\*----------------------------------------------------------------------------*/

stock Iter_RandomInternal(count, array[], size)
{
	if(count == 0) return -1;
	new rnd = random(count), cur = array[size];
	while(cur != size)
	{
		if(rnd-- == 0) return cur;
		cur = array[cur];
	}
	return -1;
}

/*----------------------------------------------------------------------------*\
Function:
	Iter_FreeInternal
Params:
	count - Number of items in the iterator.
	array[] - Iterator data.
	size - Size of the iterator.
Return:
	-
Notes:
	Finds the first free slot in the iterator.  Iterators now HAVE to be
	sorted for this function to work correctly as it uses that fact to decide
	wether a slot is unused or the last one.  If you want to use the slot
	straight after finding it the iterator will need to re-find it to add in
	the data.
\*----------------------------------------------------------------------------*/

stock Iter_FreeInternal(array[], size)
{
	for(new i; i != size; ++i)
	{
		if(array[i] > size) return i;
	}
	return -1;
}

/*----------------------------------------------------------------------------*\
Function:
	Iter_AddInternal
Params:
	&start - Array start index.
	&count - Number of items in the iterator.
	array[] - Iterator data.
	value - Item to add.
Return:
	-
Notes:
	Adds a value to a given iterator set.  Now detects when you try and add the
	last item multiple times, as well as all the other items.  Now simplified even
	further with the new internal representation.
\*----------------------------------------------------------------------------*/

stock Iter_AddInternal(&count, array[], value, size)
{
	if(0 <= value < size && array[value] > size)
	{
		new last = size, next = array[last];
		while(next < value)
		{
			last = next;
			next = array[last];
		}
		array[last] = value;
		array[value] = next;
		++count;
		return 1;
	}
	return 0;
}

/*----------------------------------------------------------------------------*\
Function:
	Iter_RemoveInternal
Params:
	&count - Number of items in the iterator.
	array[] - Iterator data.
	value - Item to remove.
Return:
	-
Notes:
	Removes a value from an iterator.
\*----------------------------------------------------------------------------*/

stock Iter_RemoveInternal(&count, array[], value, size)
{
	new last;
	return Iter_SafeRemoveInternal(count, array, value, last, size);
}

/*----------------------------------------------------------------------------*\
Function:
	Iter_SafeRemoveInternal
Params:
	&count - Number of items in the iterator.
	array[] - Iterator data.
	back[] - Reverse iterator data.
	value - Item to remove.
	&last - Pointer in which to store the last pointer.
Return:
	-
Notes:
	Removes a value from an iterator safely.
\*----------------------------------------------------------------------------*/

stock Iter_SafeRemoveInternal(&count, array[], value, &last, size)
{
	if(0 <= value < size && array[value] <= size)
	{
		last = size;
		new next = array[last];
		while(next != value)
		{
			last = next;
			next = array[last];
		}
		array[last] = array[value];
		array[value] = size + 1;
		--count;
		return 1;
	}
	return 0;
}

/*----------------------------------------------------------------------------*\
Function:
	Iter_ContainsInternal
Params:
	array[] - Iterator data.
	value - Item to check.
	size - Size of the iterator.
Return:
	-
Notes:
	Checks if this item is in the iterator.
\*----------------------------------------------------------------------------*/

stock Iter_ContainsInternal(array[], value, size) return 0 <= value < size && array[value] <= size;

/*----------------------------------------------------------------------------*\
Function:
	Iter_ClearInternal
Params:
	&count - Number of items in the iterator.
	array[] - Iterator data.
	size - Size of the iterator.
Return:
	-
Notes:
	Resets an iterator.
\*----------------------------------------------------------------------------*/

stock Iter_ClearInternal(&count, array[], size)
{
	for(new i, t = size + 1; i < size; ++i) array[i] = t;
	array[size] = size;
	count = 0;
	return 1;
}

/*----------------------------------------------------------------------------*\
Function:
	Iter_InitInternal
Params:
	array[][] - Iterator array to initialise.
	s0 - Size of first dimension.
	s1 - Size of second dimension.
Return:
	-
Notes:
	Multi-dimensional arrays can not be initialised at compile time, so need to be
	done at run time, which is slightly annoying.
\*----------------------------------------------------------------------------*/

stock Iter_InitInternal(arr[][], s0, s1)
{
	for(new i, t = s1 + 1; i < s0; ++i)
	{
		for(new j; j < s1; ++j) arr[i][j] = t;
		arr[i][s1] = s1;
	}
	return 1;
}

/*----------------------------------------------------------------------------*\
Function:
	Iter_PrevInternal
Params:
	array[] - Iterator data.
	size - Size of the iterator.
	slot - The current slot.
Return:
	-
Notes:
	Gets the element in an iterator that points to the current element.
\*----------------------------------------------------------------------------*/

stock Iter_PrevInternal(array[], size, slot)
{
	if(0 <= slot <= size && array[slot] <= size)
	{
		for(new last = slot; last--; )
		{
			if(array[last] == slot) return last;
		}
	}
	return size;
}

/*----------------------------------------------------------------------------*\
Function:
	Iter_Begin
Params:
	iter - Name of the iterator to get the start of.
Return:
	-
Notes:
	Gets a point BEFORE the start of the iterator (the theoretical beginning).
\*----------------------------------------------------------------------------*/

#define Iter_Begin(%1) (_Y_ITER_ARRAY_SIZE(%1))

/*----------------------------------------------------------------------------*\
Function:
	Iter_End
Params:
	iter - Name of the iterator to
Return:
	-
Notes:
	Gets a point AFTER the end of the iterator (think "MAX_PLAYERS").
\*----------------------------------------------------------------------------*/

#define Iter_End(%1) (_Y_ITER_ARRAY_SIZE(%1))

/*----------------------------------------------------------------------------*\
Function:
	Iter_First
Params:
	iter - Name of the iterator to
Return:
	-
Notes:
	Gets the first element in an iterator.
\*----------------------------------------------------------------------------*/

#define Iter_First(%1) (_Y_ITER_ARRAY:%1@YSII_Ag[_Y_ITER_ARRAY_SIZE(%1)])

/*----------------------------------------------------------------------------*\
Function:
	Iter_Last
Params:
	iter - Name of the iterator to
Return:
	-
Notes:
	Gets the last element in an iterator.
\*----------------------------------------------------------------------------*/

#define Iter_Last(%1) Iter_PrevInternal(_Y_ITER_ARRAY:%1@YSII_Ag,_Y_ITER_ARRAY_SIZE(%1),_Y_ITER_ARRAY_SIZE(%1))

/*----------------------------------------------------------------------------*\
Function:
	Iter_Next
Params:
	iter - Name of the iterator to
Return:
	-
Notes:
	Gets the element in an interator after the current one.
\*----------------------------------------------------------------------------*/

#define Iter_Next(%1,%2) (_Y_ITER_ARRAY:%1@YSII_Ag[(%2)])

/*----------------------------------------------------------------------------*\
Function:
	Iter_Prev
Params:
	iter - Name of the iterator to
Return:
	-
Notes:
	Gets the element in an iterator before the current one.  Slow.
\*----------------------------------------------------------------------------*/

#define Iter_Prev(%1,%2) Iter_PrevInternal(_Y_ITER_ARRAY:%1@YSII_Ag,_Y_ITER_ARRAY_SIZE(%1),(%2))

/*----------------------------------------------------------------------------*\
Function:
    Iter_InternalArray
Params:
    iter - Name of the iterator to get the true name of.
Return:
    -
Notes:
    Accesses the internal array of an iterator.
\*----------------------------------------------------------------------------*/

#define Iter_InternalArray(%1) (_Y_ITER_ARRAY:%1@YSII_Ag)

/*----------------------------------------------------------------------------*\
Function:
    Iter_InternalSize
Params:
    iter - Name of the iterator to get the true size of.
Return:
    -
Notes:
    Accesses the internal size of an iterator.
\*----------------------------------------------------------------------------*/

#define _Y_ITER_INT_SIZE:%0(%2[%1]@YSII_Ag)) %0(%2@YSII_Ag[]))
#define Iter_InternalSize(%1) (_:_Y_ITER_INT_SIZE:sizeof (%1@YSII_Ag))

/*----------------------------------------------------------------------------*/

new Iterator:Player<MAX_PLAYERS>;

public OnFilterScriptInit()
{
    Iter_Clear(Player);
    for(new playerid = MAX_PLAYERS; playerid >= 0; playerid--) { if(IsPlayerConnected(playerid) && !Iter_Contains(Player, playerid)) Iter_Add(Player, playerid); }
	#if defined fc_OnFilterScriptInit
		return fc_OnFilterScriptInit();
	#else
	    return 1;
	#endif
}
#if defined _ALS_OnFilterScriptInit
    #undef OnFilterScriptInit
#else
    #define _ALS_OnFilterScriptInit
#endif
#if defined fc_OnFilterScriptInit
	forward fc_OnFilterScriptInit();
#endif
#define OnFilterScriptInit fc_OnFilterScriptInit

public OnGameModeInit()
{
    Iter_Clear(Player);
    for(new playerid = MAX_PLAYERS; playerid >= 0; playerid--) { if(IsPlayerConnected(playerid) && !Iter_Contains(Player, playerid)) Iter_Add(Player, playerid); }
	#if defined fc_OnGameModeInit
		return fc_OnGameModeInit();
	#else
	    return 1;
	#endif
}
#if defined _ALS_OnGameModeInit
    #undef OnGameModeInit
#else
    #define _ALS_OnGameModeInit
#endif
#if defined fc_OnGameModeInit
	forward fc_OnGameModeInit();
#endif
#define OnGameModeInit fc_OnGameModeInit

public OnPlayerConnect(playerid)
{
    Iter_Add(Player, playerid);
	#if defined fc_OnPlayerConnect
		return fc_OnPlayerConnect(playerid);
	#else
	    return 1;
	#endif
}
#if defined _ALS_OnPlayerConnect
	#undef OnPlayerConnect
#else
	#define _ALS_OnPlayerConnect
#endif
#if defined fc_OnPlayerConnect
	forward fc_OnPlayerConnect(playerid);
#endif
#define OnPlayerConnect fc_OnPlayerConnect

public OnPlayerDisconnect(playerid, reason)
{
	new id = 1;
    #if defined fc_OnPlayerDisconnect
    	id = fc_OnPlayerDisconnect(playerid, reason);
	#endif
	SetTimerEx("fc_PlayerRemove", 0, 0, "i", playerid);
	return id;
}
#if defined _ALS_OnPlayerDisconnect
	#undef OnPlayerDisconnect
#else
	#define _ALS_OnPlayerDisconnect
#endif
#if defined fc_OnPlayerDisconnect
	forward fc_OnPlayerDisconnect(playerid, reason);
#endif
#define OnPlayerDisconnect fc_OnPlayerDisconnect

forward fc_PlayerRemove(playerid);
public fc_PlayerRemove(playerid) Iter_Remove(Player, playerid);
/*----------------------------------------------------------------------------*/
