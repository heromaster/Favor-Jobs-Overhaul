ScriptName FavorJobsChopWoodScript extends Quest

APPS_FW_Relationship Property RS Auto

Actor Property PlayerRef Auto
MiscObject	Property pFirewood Auto
MiscObject Property pGold Auto
GlobalVariable Property JobsWoodValue Auto

Function SellWood(Actor Foreman)
	Float CurrentRP = RS.GetRelationshipPoints(Foreman)

	;Count the amount of wood the player has
	Int PlayerFirewoodCount = PlayerRef.GetItemCount(pFirewood)
		
	;Make the Foreman the player's friend (edit: if he had sold enough firewood)
	;Cap the relationship points in the middle of transition between Rank 1 and Rank 2
	If(CurrentRP < 150)
		If(RS.WouldGiveRP(Foreman, PlayerFirewoodCount * JsonUtil.GetFloatValue("FavorReturnOverhaul", "RPPerFirewood") + RS.GetRelationshipPoints(Foreman)) >= 150)
			RS.SetRelationshipPoints(Foreman, 150)
		Else
			RS.ModRelationshipPoints(Foreman, PlayerFirewoodCount * JsonUtil.GetFloatValue("FavorReturnOverhaul", "RPPerFirewood"))
		EndIf
	EndIf
			
	;Calculate the amount of gold to give the player
	Int PlayerGoldReward = (PlayerFirewoodCount * (JobsWoodValue.GetValueInt()))

	PlayerRef.RemoveItem(pFirewood, PlayerFirewoodCount)
	PlayerRef.AddItem(pGold, PlayerGoldReward)
EndFunction