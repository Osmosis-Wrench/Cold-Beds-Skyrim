Scriptname ColdBeds_AddPerkToPlayer extends Quest  
{Adds the Cold Beds perk to the player.}

Actor Property PlayerRef  Auto  
Perk Property ColdBeds_ActivatorPerk  Auto  

Event OnInit()
	PlayerRef.AddPerk(ColdBeds_ActivatorPerk)
	(Self as Quest).stop()
EndEvent
