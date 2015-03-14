ScriptName FavorJobsMineOreScript extends Quest

APPS_FW_Relationship Property RS Auto

Actor Property PlayerRef Auto
MiscObject Property OreCorundum Auto
MiscObject Property OreEbony Auto
MiscObject Property OreGold Auto
MiscObject Property OreIron Auto
MiscObject Property OreMalachite Auto
MiscObject Property OreMoonstone Auto
MiscObject Property OreOrichalcum Auto
MiscObject Property OreQuicksilver Auto
MiscObject Property OreSilver Auto
MiscObject Property pGold001 Auto
GlobalVariable Property JobsOreCorundumValue Auto
GlobalVariable Property JobsOreEbonyValue Auto
GlobalVariable Property JobsOreGoldValue Auto
GlobalVariable Property JobsOreIronValue Auto
GlobalVariable Property JobsOreMalachiteValue Auto
GlobalVariable Property JobsOreMoonstoneValue Auto
GlobalVariable Property JobsOreOrichalcumValue Auto
GlobalVariable Property JobsOreQuicksilverValue Auto
GlobalVariable Property JobsOreSilverValue Auto

Function SellOre(Actor Foreman, Keyword OreType)
	Float CurrentRP = RS.GetRelationshipPoints(Foreman)
	Int PlayerGoldReward
	Int PlayerOreCount

	;Make the Foreman the player's friend (edit: if he had sold enough ore)
	;Cap the relationship points in the middle of transition between Rank 1 and Rank 2
	If(CurrentRP < 150)
		String RPPerOreType = "RPPer" + OreType.GetString()

		If(RS.WouldGiveRP(Foreman, PlayerOreCount * JsonUtil.GetFloatValue("FavorReturnOverhaul", RPPerOreType) + RS.GetRelationshipPoints(Foreman)) >= 150)
			RS.SetRelationshipPoints(Foreman, 150)
		Else
			RS.ModRelationshipPoints(Foreman, PlayerOreCount * JsonUtil.GetFloatValue("FavorReturnOverhaul", RPPerOreType))
		EndIf
	EndIf

	;Player is selling Corundum
	If OreType.GetString() == "MinerCorundum"
		;Count the amount of ore the player has
		PlayerOreCount = PlayerRef.GetItemCount(OreCorundum)

		;Calculate the amount of gold to give the player
		PlayerGoldReward = PlayerOreCount * (JobsOreCorundumValue.GetValueInt())

		PlayerRef.RemoveItem(OreCorundum, PlayerOreCount)
		PlayerRef.AddItem(pGold001, PlayerGoldReward)

	;Player is selling Ebony
	ElseIf OreType.GetString() == "MinerEbony"
		;Count the amount of ore the player has
		PlayerOreCount = PlayerRef.GetItemCount(OreEbony)

		;Calculate the amount of gold to give the player
		PlayerGoldReward = PlayerOreCount * (JobsOreEbonyValue.GetValueInt())

		PlayerRef.RemoveItem(OreEbony, PlayerOreCount)
		PlayerRef.AddItem(pGold001, PlayerGoldReward)

	;Player is selling Gold
	ElseIf OreType.GetString() == "MinerGold"
		;Count the amount of ore the player has
		PlayerOreCount = PlayerRef.GetItemCount(OreGold)

		;Calculate the amount of gold to give the player
		PlayerGoldReward = PlayerOreCount * (JobsOreGoldValue.GetValueInt())

		PlayerRef.RemoveItem(OreGold, PlayerOreCount)
		PlayerRef.AddItem(pGold001, PlayerGoldReward)

	;Player is selling Iron
	ElseIf OreType.GetString() == "MinerIron"
		;Count the amount of ore the player has
		PlayerOreCount = PlayerRef.GetItemCount(OreIron)

		;Calculate the amount of gold to give the player
		PlayerGoldReward = PlayerOreCount * (JobsOreIronValue.GetValueInt())

		PlayerRef.RemoveItem(OreIron, PlayerOreCount)
		PlayerRef.AddItem(pGold001, PlayerGoldReward)

	;Player is selling Malachite
	ElseIf OreType.GetString() == "MinerMalachite"
		;Count the amount of ore the player has
		PlayerOreCount = PlayerRef.GetItemCount(OreMalachite)

		;Calculate the amount of gold to give the player
		PlayerGoldReward = PlayerOreCount * (JobsOreMalachiteValue.GetValueInt())

		PlayerRef.RemoveItem(OreMalachite, PlayerOreCount)
		PlayerRef.AddItem(pGold001, PlayerGoldReward)

	;Player is selling Moonstone
	ElseIf OreType.GetString() == "MinerMoonstone"
		;Count the amount of ore the player has
		PlayerOreCount = PlayerRef.GetItemCount(OreMoonstone)

		;Calculate the amount of gold to give the player
		PlayerGoldReward = PlayerOreCount * (JobsOreMoonstoneValue.GetValueInt())

		PlayerRef.RemoveItem(OreMoonstone, PlayerOreCount)
		PlayerRef.AddItem(pGold001, PlayerGoldReward)

	;Player is selling Orichalcum
	ElseIf OreType.GetString() == "MinerOrichalcum"
		;Count the amount of ore the player has
		PlayerOreCount = PlayerRef.GetItemCount(OreOrichalcum)

		;Calculate the amount of gold to give the player
		PlayerGoldReward = PlayerOreCount * (JobsOreOrichalcumValue.GetValueInt())

		PlayerRef.RemoveItem(OreOrichalcum, PlayerOreCount)
		PlayerRef.AddItem(pGold001, PlayerGoldReward)

	;Player is selling Quicksilver
	ElseIf OreType.GetString() == "MinerQuicksilver"
		;Count the amount of ore the player has
		PlayerOreCount = PlayerRef.GetItemCount(OreQuicksilver)

		;Calculate the amount of gold to give the player
		PlayerGoldReward = PlayerOreCount * (JobsOreQuicksilverValue.GetValueInt())

		PlayerRef.RemoveItem(OreQuicksilver, PlayerOreCount)
		PlayerRef.AddItem(pGold001, PlayerGoldReward)

	;Player is selling Silver
	ElseIf OreType.GetString() == "MinerSilver"
		;Count the amount of ore the player has
		PlayerOreCount = PlayerRef.GetItemCount(OreSilver)

		;Calculate the amount of gold to give the player
		PlayerGoldReward = PlayerOreCount * (JobsOreSilverValue.GetValueInt())

		PlayerRef.RemoveItem(OreSilver, PlayerOreCount)
		PlayerRef.AddItem(pGold001, PlayerGoldReward)
	EndIf
EndFunction