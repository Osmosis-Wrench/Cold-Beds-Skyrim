;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 42
Scriptname PRKF_ColdBeds_ActivatorPerk_05005902 Extends Perk Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
If (AkTargetRef.GetActorOwner().GetDeadCount() == 1)
	ActorBase oldBase = AkTargetRef.GetActorOwner()
	cell currentCell = AkTargetRef.GetParentCell()

	currentCell.setPublic()
	AkTargetRef.SetActorOwner(AkActor.GetActorBase())
	AkTargetRef.Activate(AkActor as ObjectReference, true)
	currentCell.SetPublic(false)

	AkTargetRef.SetActorOwner(oldBase)
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
