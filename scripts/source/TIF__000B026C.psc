;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname TIF__000B026C Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_2
Function Fragment_2(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Float CurrentRP = RS.GetRelationshipPoints(akSpeaker)

If akSpeaker.ShowGiftMenu(True, pAlcoholicDrinksList, abShowStolenItems = true) > 0
	If(CurrentRP < 150)
		If(RS.WouldGiveRP(akSpeaker, JsonUtil.GetFloatValue("FavorReturnOverhaul", "RPPerDrink") + RS.GetRelationshipPoints(akSpeaker)) >= 150)
			RS.SetRelationshipPoints(akSpeaker, 150)
		Else
			RS.ModRelationshipPoints(akSpeaker, JsonUtil.GetFloatValue("FavorReturnOverhaul", "RPPerDrink"))
		EndIf
	EndIf

	;akspeaker.AddToFaction(pFavorCompletedFaction)
	pFavorSimpleDrunksSceneKeyword.SendStoryEvent(akRef1=akspeaker)
EndIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
APPS_FW_Relationship Property RS Auto

Actor Property PlayerRef Auto
Formlist Property pAlcoholicDrinksList  Auto
Keyword Property pFavorSimpleDrunksSceneKeyword Auto
