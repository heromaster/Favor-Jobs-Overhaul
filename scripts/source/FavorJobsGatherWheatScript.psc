ScriptName FavorJobsGatherWheatScript extends Quest

APPS_FW_Relationship Property RS Auto

Actor Property PlayerRef Auto
Ingredient Property Wheat Auto
Potion Property Gourd Auto
Ingredient Property Nirnroot Auto
Potion Property FoodPotato Auto
Potion Property FoodCabbage Auto
Potion Property FoodLeek Auto
MiscObject Property pGold Auto

Function SellWheat(Actor Foreman)
	Float CurrentRP = RS.GetRelationshipPoints(Foreman)

	;Count the amount of wheat the player has
	Int PlayerCropCount = PlayerRef.GetItemCount(Wheat)

	;Make the Foreman the player's friend (edit: if he had sold enough wheat)
	;Cap the relationship points in the middle of transition between Rank 1 and Rank 2
	If(CurrentRP < 150)
		If(RS.WouldGiveRP(Foreman, PlayerCropCount * JsonUtil.GetFloatValue("FavorReturnOverhaul", "RPPerWheat") + RS.GetRelationshipPoints(Foreman)) >= 150)
			RS.SetRelationshipPoints(Foreman, 150)
		Else
			RS.ModRelationshipPoints(Foreman, PlayerCropCount * JsonUtil.GetFloatValue("FavorReturnOverhaul", "RPPerWeath"))
		EndIf
	EndIf

	;Calculate the amount of gold to give the player
	Int PlayerGoldReward = (PlayerCropCount * (Wheat.GetGoldValue()))

	PlayerRef.RemoveItem(Wheat, PlayerCropCount)
	PlayerRef.AddItem(pGold, PlayerGoldReward)
EndFunction

Function SellPotato(Actor Foreman)
	Float CurrentRP = RS.GetRelationshipPoints(Foreman)

	;Count the amount of wheat the player has
	Int PlayerCropCount = PlayerRef.GetItemCount(FoodPotato)

	;Make the Foreman the player's friend (edit: if he had sold enough potatoes)
	;Cap the relationship points in the middle of transition between Rank 1 and Rank 2
	If(CurrentRP < 150)
		If(RS.WouldGiveRP(Foreman, PlayerCropCount * JsonUtil.GetFloatValue("FavorReturnOverhaul", "RPPerPotatoe") + RS.GetRelationshipPoints(Foreman)) >= 150)
			RS.SetRelationshipPoints(Foreman, 150)
		Else
			RS.ModRelationshipPoints(Foreman, PlayerCropCount * JsonUtil.GetFloatValue("FavorReturnOverhaul", "RPPerPotatoe"))
		EndIf
	EndIf

	;Calculate the amount of gold to give the player
	Int PlayerGoldReward = (PlayerCropCount * (FoodPotato.GetGoldValue()))

	PlayerRef.RemoveItem(FoodPotato, PlayerCropCount)
	PlayerRef.AddItem(pGold, PlayerGoldReward)
EndFunction

Function SellLeek(Actor Foreman)
	Float CurrentRP = RS.GetRelationshipPoints(Foreman)

	;Count the amount of wheat the player has
	Int PlayerCropCount = PlayerRef.GetItemCount(FoodLeek)

	;Make the Foreman the player's friend (edit: if he had sold enough leek)
	;Cap the relationship points in the middle of transition between Rank 1 and Rank 2
	If(CurrentRP < 150)
		If(RS.WouldGiveRP(Foreman, PlayerCropCount * JsonUtil.GetFloatValue("FavorReturnOverhaul", "RPPerLeek") + RS.GetRelationshipPoints(Foreman)) >= 150)
			RS.SetRelationshipPoints(Foreman, 150)
		Else
			RS.ModRelationshipPoints(Foreman, PlayerCropCount * JsonUtil.GetFloatValue("FavorReturnOverhaul", "RPPerLeek"))
		EndIf
	EndIf

	;Calculate the amount of gold to give the player
	Int PlayerGoldReward = (PlayerCropCount * (FoodLeek.GetGoldValue()))

	PlayerRef.RemoveItem(FoodLeek, PlayerCropCount)
	PlayerRef.AddItem(pGold, PlayerGoldReward)
EndFunction

Function SellGourd(Actor Foreman)
	Float CurrentRP = RS.GetRelationshipPoints(Foreman)

	;Count the amount of wheat the player has
	Int PlayerCropCount = PlayerRef.GetItemCount(Gourd)

	;Make the Foreman the player's friend (edit: if he had sold enough gourd)
	;Cap the relationship points in the middle of transition between Rank 1 and Rank 2
	If(CurrentRP < 150)
		If(RS.WouldGiveRP(Foreman, PlayerCropCount * JsonUtil.GetFloatValue("FavorReturnOverhaul", "RPPerGourd") + RS.GetRelationshipPoints(Foreman)) >= 150)
			RS.SetRelationshipPoints(Foreman, 150)
		Else
			RS.ModRelationshipPoints(Foreman, PlayerCropCount * JsonUtil.GetFloatValue("FavorReturnOverhaul", "RPPerGourd"))
		EndIf
	EndIf

	;Calculate the amount of gold to give the player
	Int PlayerGoldReward = (PlayerCropCount * (Gourd.GetGoldValue()))

	PlayerRef.RemoveItem(Gourd, PlayerCropCount)
	PlayerRef.AddItem(pGold, PlayerGoldReward)
EndFunction

Function SellCabbage(Actor Foreman)
	Float CurrentRP = RS.GetRelationshipPoints(Foreman)

	;Count the amount of wheat the player has
	Int PlayerCropCount = PlayerRef.GetItemCount(FoodCabbage)

	;Make the Foreman the player's friend (edit: if he had sold enough cabbage)
	;Cap the relationship points in the middle of transition between Rank 1 and Rank 2
	If(CurrentRP < 150)
		If(RS.WouldGiveRP(Foreman, PlayerCropCount * JsonUtil.GetFloatValue("FavorReturnOverhaul", "RPPerCabbage") + RS.GetRelationshipPoints(Foreman)) >= 150)
			RS.SetRelationshipPoints(Foreman, 150)
		Else
			RS.ModRelationshipPoints(Foreman, PlayerCropCount * JsonUtil.GetFloatValue("FavorReturnOverhaul", "RPPerCabbage"))
		EndIf
	EndIf

	;Calculate the amount of gold to give the player
	Int PlayerGoldReward = (PlayerCropCount * (FoodCabbage.GetGoldValue()))

	PlayerRef.RemoveItem(FoodCabbage, PlayerCropCount)
	PlayerRef.AddItem(pGold, PlayerGoldReward)
EndFunction

Function SellNirnroot(Actor Foreman)
	Float CurrentRP = RS.GetRelationshipPoints(Foreman)

	;Count the amount of wheat the player has
	Int PlayerCropCount = PlayerRef.GetItemCount(Nirnroot)

	;Make the Foreman the player's friend (edit: if he had sold enough Nirnroot)
	;Cap the relationship points in the middle of transition between Rank 1 and Rank 2
	If(CurrentRP < 150)
		If(RS.WouldGiveRP(Foreman, PlayerCropCount * JsonUtil.GetFloatValue("FavorReturnOverhaul", "RPPerNirnroot") + RS.GetRelationshipPoints(Foreman)) >= 150)
			RS.SetRelationshipPoints(Foreman, 150)
		Else
			RS.ModRelationshipPoints(Foreman, PlayerCropCount * JsonUtil.GetFloatValue("FavorReturnOverhaul", "RPPerNirnroot"))
		EndIf
	EndIf

	;Calculate the amount of gold to give the player
	Int PlayerGoldReward = (PlayerCropCount * (Nirnroot.GetGoldValue()))

	PlayerRef.RemoveItem(Nirnroot, PlayerCropCount)
	PlayerRef.AddItem(pGold, PlayerGoldReward)
EndFunction