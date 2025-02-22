//Fallout 13 protective helmets directory

/obj/item/clothing/head/helmet/f13
	icon = 'icons/fallout/clothing/hats.dmi'

/obj/item/clothing/head/helmet/f13/broken
	name = "broken t-45d power helmet"
	desc = "This power armor helmet is so decrepit and battle-worn that it has ceased its primary function of protecting the wearer from harm.<br>It can still provide some very basic protection."
	icon_state = "broken"
	item_state = "broken"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH
	armor = list(melee = 25, bullet = 15, laser = 10, energy = 10, bomb = 15, bio = 10, rad = 15, fire = 10, acid = 10)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	put_on_delay = 10
	strip_delay = 20
	self_weight = 3

/obj/item/clothing/head/helmet/f13/tribal
	name = "tribal power helmet"
	desc = "This power armor helmet was salvaged by savages from the battlefield.<br>They believe that these helmets capture the spirits of their fallen wearers, so they painted some runes on to give it a more sacred meaning."
	icon_state = "tribal"
	item_state = "tribal"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH
	armor = list(melee = 30, bullet = 20, laser = 10, energy = 10, bomb = 15, bio = 10, rad = 15, fire = 10, acid = 10)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	put_on_delay = 10
	strip_delay = 30
	self_weight = 2

/obj/item/clothing/head/helmet/f13/motorcycle
	name = "motorcycle helmet"
	desc = "A type of helmet used by motorcycle riders.<br>The primary goal of a motorcycle helmet is motorcycle safety - to protect the rider's head during impact, thus preventing or reducing head injury and saving the rider's life."
	icon_state = "motorcycle"
	item_state = "motorcycle"
	flags = HEADCOVERSEYES
	armor = list(melee = 30, bullet = 20, laser = 10, energy = 10, bomb = 20, bio = 10, rad = 10, fire = 20, acid = 20)
	flags_inv = HIDEMASK|HIDEEARS|HIDEHAIR
	put_on_delay = 10
	strip_delay = 10
	self_weight = 1.5

/obj/item/clothing/head/helmet/f13/firefighter
	name = "firefighter helmet"
	desc = "A firefighter's helmet worn on top of a fire-retardant covering and broken gas mask.<br>It smells heavily of sweat."
	icon_state = "firefighter"
	item_state = "firefighter"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH
	armor = list(melee = 20, bullet = 10, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0, fire = 90, acid = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	put_on_delay = 10
	strip_delay = 30
	resistance_flags = FIRE_PROOF
	self_weight = 1.5

/obj/item/clothing/head/helmet/f13/supaflyhelmet
	name = "supa-fly raider helmet"
	desc = "A makeshift raider helmet, made of leather.<br>It smells heavily of chems and sweat."
	icon_state = "supafly"
	item_state = "supafly"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH
	armor = list(melee = 20, bullet = 15, laser = 10, energy = 10, bomb = 10, bio = 0, rad = 10, fire = 10, acid = 10)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	put_on_delay = 10
	strip_delay = 20
	self_weight = 1

/obj/item/clothing/head/helmet/f13/yankee
	name = "yankee raider helmet"
	desc = "A long time ago, this belonged to a football player, now it belongs to the wasteland."
	icon_state = "yankee"
	item_state = "yankee"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH
	armor = list(melee = 30, bullet = 20, laser = 10, energy = 10, bomb = 15, bio = 0, rad = 10, fire = 10, acid = 10)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	put_on_delay = 10
	strip_delay = 30
	self_weight = 1.5

/obj/item/clothing/head/helmet/f13/eyebot
	name = "eyebot helmet"
	desc = "A dismantled eyebot, hollowed out to accommodate for a humanoid head."
	icon_state = "eyebot"
	item_state = "eyebot"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH
	armor = list(melee = 40, bullet = 20, laser = 10, energy = 10, bomb = 20, bio = 25, rad = 30, fire = 40, acid = 30)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	put_on_delay = 10
	strip_delay = 50
	resistance_flags = FIRE_PROOF
	self_weight = 2

/obj/item/clothing/head/helmet/f13/khan
	name = "great khan helmet"
	desc = "A piece of headwear commonly worn by the Great Khans that appears to resemble stereotypical traditional Mongolian helmets - likely adapted from a pre-War motorcycle helmet.<br>It is black with two horns on either side and a small spike jutting from the top, much like a pickelhaube.<br>A leather covering protects the wearer's neck and ears from sunburn."
	icon_state = "khan"
	item_state = "khan"
	armor = list(melee = 40, bullet = 15, laser = 10, energy = 20, bomb = 25, bio = 20, rad = 20, fire = 20, acid = 20)
	flags_inv = HIDEEARS|HIDEHAIR
	put_on_delay = 10
	strip_delay = 20
	self_weight = 1.5

/obj/item/clothing/head/helmet/f13/marine
	name = "combat helmet mark I"
	desc = "A pre-War ballistic assembly, designed to provide moderate protection in combat.<br>Overtime the model became significantly less effective, and was replaced with reinforced combat helmet mark I."
	icon_state = "marine"
	item_state = "marine"
	armor = list(melee = 30, bullet = 20, laser = 10, energy = 10, bomb = 20, bio = 0, rad = 0, fire = 20, acid = 20)
	flags_inv = HIDEEARS
	put_on_delay = 20
	strip_delay = 30
	resistance_flags = FIRE_PROOF
	self_weight = 1

/obj/item/clothing/head/helmet/f13/combat_mk1
	name = "reinforced combat helmet mark I"
	desc = "A ballistic assembly, designed to protect the wearer from projectile and energy weapon impacts, bladed weapons, blunt trauma, and concussion."
	icon_state = "combat_mk1"
	item_state = "combat_mk1"
	flags = HEADCOVERSEYES
	armor = list(melee = 40, bullet = 40, laser = 10, energy = 20, bomb = 30, bio = 0, rad = 0, fire = 20, acid = 20)
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR
	put_on_delay = 20
	strip_delay = 40
	resistance_flags = FIRE_PROOF
	self_weight = 2

/obj/item/clothing/head/helmet/f13/combat_mk2
	name = "reinforced combat helmet mark II"
	desc = "A complex ballistic assembly, designed to protect the wearer from projectile and energy weapon impacts, bladed weapons, blunt trauma, and concussion."
	icon_state = "combat_mk2"
	item_state = "combat_mk2"
	armor = list(melee = 60, bullet = 60, laser = 15, energy = 15, bomb = 40, bio = 0, rad = 0, fire = 40, acid = 40)
	flags_inv = HIDEEARS
	put_on_delay = 20
	strip_delay = 30
	resistance_flags = FIRE_PROOF
	self_weight = 1

/obj/item/clothing/head/helmet/f13/liquidhelmet
	name = "ballistic helmet"
	desc = "A custom built ballistic helmet made with very advanced kevlar and dyneema hybrid plates for maximum protection against most projectiles. It appears to be based on an NCR ranger's helmet, including a similar night vision function."
	icon_state = "liquidhelmet"
	item_state = "liquidhelmet"
	armor = list(melee = 50, bullet = 30, laser = 10, energy = 10, bomb = 30, bio = 0, rad = 80, fire = 50, acid = 20)
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	put_on_delay = 10
	strip_delay = 50
	resistance_flags = FIRE_PROOF
	self_weight = 1
	darkness_view = 8
	invis_view = SEE_INVISIBLE_MINIMUM
	glass_colour_type = /datum/client_colour/glass_colour/lightorange
	actions_types = list(/datum/action/item_action/toggle)
	visor_vars_to_toggle = VISOR_DARKNESSVIEW | VISOR_INVISVIEW
	can_toggle = 1
	var/enabled = 1

/obj/item/clothing/head/helmet/f13/liquidhelmet/New()
	..()
	visor_toggling()

/obj/item/clothing/head/helmet/f13/liquidhelmet/attack_self(mob/user)
	to_chat(user, "<span class='notice'>You [up ? "enabled" : "disabled"] [src].</span>")
	visor_toggling()
	user << sound('sound/misc/compiler-stage2.ogg',0,0,0,50)
	if(iscarbon(user))
		var/mob/living/carbon/C = user
		C.head_update(src, forced = 1)
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

/obj/item/clothing/head/helmet/f13/huntermask
	name = "gas mask"
	desc = "Before you lies a rusted World War II gas mask, seemingly modified to have thermal capabilities. Beside the mask is a continuous black cloth, which seems to be able to wrap around your entire head. This ensemble appears to favor those who wish to protect their identities at all costs."
	icon_state = "huntermask"
	item_state = "huntermask"
	armor = list(melee = 65, bullet = 10, laser = 10, energy = 10, bomb = 30, bio = 0, rad = 80, fire = 50, acid = 20)
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	put_on_delay = 10
	strip_delay = 50
	resistance_flags = FIRE_PROOF
	self_weight = 1
	darkness_view = 8
	invis_view = SEE_INVISIBLE_MINIMUM
	glass_colour_type = /datum/client_colour/glass_colour/lightorange
	actions_types = list(/datum/action/item_action/toggle)
	visor_vars_to_toggle = VISOR_DARKNESSVIEW | VISOR_INVISVIEW
	can_toggle = 1
	var/enabled = 1

/obj/item/clothing/head/helmet/f13/huntermask/New()
	..()
	visor_toggling()

/obj/item/clothing/head/helmet/f13/huntermask/attack_self(mob/user)
	to_chat(user, "<span class='notice'>You [up ? "enabled" : "disabled"] [src].</span>")
	visor_toggling()
	user << sound('sound/misc/compiler-stage2.ogg',0,0,0,50)
	if(iscarbon(user))
		var/mob/living/carbon/C = user
		C.head_update(src, forced = 1)
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

/obj/item/clothing/head/helmet/f13/johnhelmet
	name = "ranger helmet"
	desc = "An old military helmet with a built-in night vision device which no longer seems to function. You feel depressed just looking at this ugly thing."
	icon_state = "johnranger"
	item_state = "johnranger"
	armor = list(melee = 50, bullet = 15, laser = 15, energy = 15, bomb = 30, bio = 0, rad = 80, fire = 50, acid = 20)
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	put_on_delay = 10
	strip_delay = 50
	resistance_flags = FIRE_PROOF
	self_weight = 1
	darkness_view = 8

/obj/item/clothing/head/helmet/f13/legrecruit
	name = "recruit legionary helmet"
	desc = "A Legion recruit helmet, made of fine molerat leather. Or was it gecko leather? Come to think of it, that other guy from Legion had a helmet made of brahmin leather..."
	icon_state = "legrecruit"
	item_state = "legrecruit"
	armor = list(melee = 35, bullet = 10, laser = 5, energy = 5, bomb = 55, bio = 20, rad = 25, fire = 25, acid = 25)
	flags_inv = HIDEEARS|HIDEHAIR
	put_on_delay = 10
	strip_delay = 30
	self_weight = 1

/obj/item/clothing/head/helmet/f13/legprime
	name = "prime legionary helmet"
	desc = "It appears to be a pitcher helmet with a red line burned into it. Vaguely smells of blood and sweat."
	icon_state = "legprime"
	item_state = "legprime"
	armor = list(melee = 55, bullet = 15, laser = 5, energy = 5, bomb = 60, bio = 20, rad = 25, fire = 25, acid = 25)
	flags_inv = HIDEEARS|HIDEHAIR
	put_on_delay = 10
	strip_delay = 30
	self_weight = 1

/obj/item/clothing/head/helmet/f13/legvexil
	name = "legion vexillarius helmet"
	desc = "Vis gregis est lupus, ac vis lupi est grex.<br>100% of wolf."
	icon_state = "legvexil"
	item_state = "legvexil"
	armor = list(melee = 30, bullet = 25, laser = 15, energy = 15, bomb = 60, bio = 20, rad = 20, fire = 20, acid = 20)
	flags_inv = HIDEMASK|HIDEEARS|HIDEHAIR
	put_on_delay = 10
	strip_delay = 50
	self_weight = 0.5

/obj/item/clothing/head/helmet/f13/legdecan
	name = "legion decanus helmet"
	desc = "A Legion decanus helmet, made of tanned leather and decorated with feathers."
	icon_state = "legdecan"
	item_state = "legdecan"
	armor = list(melee = 50, bullet = 25, laser = 15, energy = 15, bomb = 70, bio = 30, rad = 40, fire = 40, acid = 30)
	flags_inv = HIDEEARS|HIDEHAIR
	put_on_delay = 10
	strip_delay = 40
	self_weight = 0.5

/obj/item/clothing/head/helmet/f13/legdecan/alt //Variant with spiky feathers and pre-made goggles by Darkstalker_Darkfold.
	name = "legion decanus helmet"
	desc = "A Legion decanus helmet, made of tanned leather and decorated with pieces of biker goggles.<br>This one has particularly spiky feathers..."
	icon_state = "legdecanalt"
	item_state = "legdecanalt"
	flags = HEADCOVERSEYES
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR

/obj/item/clothing/head/helmet/f13/legcenturion
	name = "legion centurion helmet"
	desc = "A metal helmet commonly worn by the Centurion, a ranked officer of Caesar's Legion."
	icon_state = "legcenturion"
	item_state = "legcenturion"
	armor = list(melee = 60, bullet = 35, laser = 10, energy = 10, bomb = 80, bio = 40, rad = 50, fire = 50, acid = 40)
	flags_inv = HIDEEARS|HIDEHAIR
	put_on_delay = 10
	strip_delay = 50
	self_weight = 2

/obj/item/clothing/head/helmet/f13/leglegate
	name = "legion legatus helmet"
	desc = "A metal helmet destined to adorn the head of the Legate, a ranked officer of Caesar's Legion."
	icon_state = "leglegate"
	item_state = "leglegate"
	armor = list(melee = 65, bullet = 55, laser = 20, energy = 20, bomb = 80, bio = 50, rad = 50, fire = 50, acid = 50)
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	put_on_delay = 10
	strip_delay = 50
	resistance_flags = FIRE_PROOF
	self_weight = 3

/obj/item/clothing/head/f13/strange
	name = "strange helmet"
	desc = "A very strange metal helmet...<br>I want to believe."
	icon = 'icons/fallout/clothing/hats.dmi'
	icon_state = "strange"
	item_state = "helmet"
	armor = list(melee = 40, bullet = 25, laser = 30, energy = 25, bomb = 20, bio = 25, rad = 25, fire = 25, acid = 25)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	put_on_delay = 10
	strip_delay = 50
	resistance_flags = FIRE_PROOF
	self_weight = 3

/obj/item/clothing/head/helmet/f13/doom
	name = "marine helmet"
	desc = "A helmet made of an unknown alloy.<br>You feel like this helmet would allow you to survive through Hell on Mars... er, Earth."
	icon_state = "doom"
	item_state = "doom"
	armor = list(melee = 90, bullet = 90, laser = 90, energy = 90, bomb = 90, bio = 90, rad = 90, fire = 90, acid = 90)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	put_on_delay = 30
	strip_delay = 10
	resistance_flags = UNACIDABLE
	self_weight = 2

/obj/item/clothing/head/helmet/f13/magneto
	name = "magneto's helmet"
	desc = "This helmet allows its wearer to resist all but the strongest or most unexpected telepathic attacks.<br>This is achieved due to technology wired into the helmet itself."
	icon_state = "magneto"
	item_state = "magneto"
	armor = list(melee = 60, bullet = 35, laser = 25, energy = 25, bomb = 25, bio = 100, rad = 100, fire = 30, acid = 100)
	flags_inv = HIDEEARS|HIDEHAIR
	put_on_delay = 10
	strip_delay = 50
	resistance_flags = UNACIDABLE
	self_weight = 0.5

//Power armor helmets

/obj/item/clothing/head/helmet/power_armor
	var/brightness_on = 4 //luminosity when the light is on
	var/on = 0
	light_color = LIGHT_COLOR_YELLOW
	icon = 'icons/fallout/clothing/hats.dmi'
	flash_protect = 2

/obj/item/clothing/head/helmet/power_armor/proc/toogle_light(mob/user)
	on = !on
	icon_state = "[initial(icon_state)][on ? "-light" : ""]"
	item_state = "[initial(item_state)][on ? "-light" : ""]"
	user.update_inv_head()
	if(on)
		set_light(brightness_on)
	else
		set_light(0)
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

/obj/item/clothing/head/helmet/power_armor/ui_action_click(mob/user, actiontype)
	if(istype(actiontype, /datum/action/item_action/toggle_helmet_light))
		toogle_light(user)
		return 1
	return ..()

/obj/item/clothing/head/helmet/power_armor/badmin
	name = "advanced power armor Mk. IV helmet"
	desc = "Enclave Hellfire armor is a heat-resistant power armor worn by high level Enclave soldiers and the specialized, elite Enclave Hellfire troopers."
	icon_state = "PLACEHOLDERFORHELLFIREHELMETSPRITE!!!"
	item_state = "PLACEHOLDERFORHELLFIREHELMETSPRITE!!!"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | STOPSPRESSUREDMAGE | BLOCK_GAS_SMOKE_EFFECT
	armor = list(melee = 145, bullet = 105, laser = 200, energy = 200, bomb = 70, bio = 100, rad = 100, fire = 100, acid = 100)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	put_on_delay = 300
	strip_delay = 300
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	self_weight = 8
	flash_protect = 2

	darkness_view = 8
	invis_view = SEE_INVISIBLE_MINIMUM
	glass_colour_type = /datum/client_colour/glass_colour/yellow
	actions_types = list(/datum/action/item_action/toggle)
	visor_vars_to_toggle = VISOR_DARKNESSVIEW | VISOR_INVISVIEW
	can_toggle = 1

/obj/item/clothing/head/helmet/power_armor/badmin/New()
	..()
	visor_toggling()

/obj/item/clothing/head/helmet/power_armor/badmin/attack_self(mob/user)
	to_chat(user, "<span class='notice'>You [up ? "enabled" : "disabled"] [src].</span>")
	visor_toggling()
	user << sound('sound/misc/compiler-stage2.ogg',0,0,0,50)
	if(iscarbon(user))
		var/mob/living/carbon/C = user
		C.head_update(src, forced = 1)
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

/obj/item/clothing/head/helmet/power_armor/shocktrooper
	name = "advanced power armor Mk. III helmet"
	desc = "A 'black devil' power armor helmet used exclusively by Enclave military forces, developed after the Great War and the destruction of the Enclave Oil Rig in 2241.<br>You can't lie, it looks pretty badass."
	icon_state = "shocktrooper"
	item_state = "shocktrooper"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | STOPSPRESSUREDMAGE | BLOCK_GAS_SMOKE_EFFECT
	armor = list(melee = 130, bullet = 105, laser = 85, energy = 70, bomb = 60, bio = 100, rad = 100, fire = 100, acid = 100)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	put_on_delay = 300
	strip_delay = 300
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	self_weight = 8
	flash_protect = 2

	darkness_view = 8
	invis_view = SEE_INVISIBLE_MINIMUM
	glass_colour_type = /datum/client_colour/glass_colour/yellow
	actions_types = list(/datum/action/item_action/toggle)
	visor_vars_to_toggle = VISOR_DARKNESSVIEW | VISOR_INVISVIEW
	can_toggle = 1

/obj/item/clothing/head/helmet/power_armor/shocktrooper/New()
	..()
	visor_toggling()

/obj/item/clothing/head/helmet/power_armor/shocktrooper/attack_self(mob/user)
	to_chat(user, "<span class='notice'>You [up ? "enabled" : "disabled"] [src].</span>")
	visor_toggling()
	user << sound('sound/misc/compiler-stage2.ogg',0,0,0,50)
	if(iscarbon(user))
		var/mob/living/carbon/C = user
		C.head_update(src, forced = 1)
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

/obj/item/clothing/head/helmet/power_armor/superadvanced
	name = "advanced power armor Mk. II helmet"
	desc = "An improved model of the standard advanced power armor helmet used exclusively by Enclave military forces, developed after the Great War.<br>It looks rather threatening."
	icon_state = "advanced"
	item_state = "advanced"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | STOPSPRESSUREDMAGE | BLOCK_GAS_SMOKE_EFFECT
	armor = list(melee = 125, bullet = 98, laser = 80, energy = 80, bomb = 55, bio = 100, rad = 100, fire = 100, acid = 100)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	put_on_delay = 300
	strip_delay = 300
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	self_weight = 8
	flash_protect = 2

	darkness_view = 8
	invis_view = SEE_INVISIBLE_MINIMUM
	glass_colour_type = /datum/client_colour/glass_colour/yellow
	actions_types = list(/datum/action/item_action/toggle)
	visor_vars_to_toggle = VISOR_DARKNESSVIEW | VISOR_INVISVIEW
	can_toggle = 1

/obj/item/clothing/head/helmet/power_armor/superadvanced/New()
	..()
	visor_toggling()

/obj/item/clothing/head/helmet/power_armor/superadvanced/attack_self(mob/user)
	to_chat(user, "<span class='notice'>You [up ? "enabled" : "disabled"] [src].</span>")
	visor_toggling()
	user << sound('sound/misc/compiler-stage2.ogg',0,0,0,50)
	if(iscarbon(user))
		var/mob/living/carbon/C = user
		C.head_update(src, forced = 1)
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

/obj/item/clothing/head/helmet/power_armor/tesla
	name = "advanced tesla power armor Mk. I helmet"
	desc = "A helmet typically used by Enclave special forces.<br>There are three orange energy capacitors on the side."
	icon_state = "tesla"
	item_state = "tesla"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | STOPSPRESSUREDMAGE | BLOCK_GAS_SMOKE_EFFECT
	armor = list(melee = 78, bullet = 78, laser = 98, energy = 98, bomb = 55, bio = 100, rad = 100, fire = 100, acid = 100)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	put_on_delay = 300
	strip_delay = 300
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	self_weight = 8
	flash_protect = 2

	darkness_view = 8
	invis_view = SEE_INVISIBLE_MINIMUM
	glass_colour_type = /datum/client_colour/glass_colour/yellow
	actions_types = list(/datum/action/item_action/toggle)
	visor_vars_to_toggle = VISOR_DARKNESSVIEW | VISOR_INVISVIEW
	can_toggle = 1

/obj/item/clothing/head/helmet/power_armor/tesla/New()
	..()
	visor_toggling()

/obj/item/clothing/head/helmet/power_armor/tesla/attack_self(mob/user)
	to_chat(user, "<span class='notice'>You [up ? "enabled" : "disabled"] [src].</span>")
	visor_toggling()
	user << sound('sound/misc/compiler-stage2.ogg',0,0,0,50)
	if(iscarbon(user))
		var/mob/living/carbon/C = user
		C.head_update(src, forced = 1)
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

/obj/item/clothing/head/helmet/power_armor/advanced
	name = "advanced power armor Mk. I helmet"
	desc = "A helmet typically used by Enclave regular troops.<br>It looks somewhat threatening."
	icon_state = "advanced"
	item_state = "advanced"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | STOPSPRESSUREDMAGE | BLOCK_GAS_SMOKE_EFFECT
	armor = list(melee = 120, bullet = 95, laser = 75, energy = 75, bomb = 55, bio = 100, rad = 100, fire = 100, acid = 100)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	put_on_delay = 300
	strip_delay = 300
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	self_weight = 8
	flash_protect = 2

	darkness_view = 8
	invis_view = SEE_INVISIBLE_MINIMUM
	glass_colour_type = /datum/client_colour/glass_colour/yellow
	actions_types = list(/datum/action/item_action/toggle)
	visor_vars_to_toggle = VISOR_DARKNESSVIEW | VISOR_INVISVIEW
	can_toggle = 1

/obj/item/clothing/head/helmet/power_armor/advanced/New()
	..()
	visor_toggling()

/obj/item/clothing/head/helmet/power_armor/advanced/attack_self(mob/user)
	to_chat(user, "<span class='notice'>You [up ? "enabled" : "disabled"] [src].</span>")
	visor_toggling()
	user << sound('sound/misc/compiler-stage2.ogg',0,0,0,50)
	if(iscarbon(user))
		var/mob/living/carbon/C = user
		C.head_update(src, forced = 1)
	for(var/X in actions)
		var/datum/action/A = X
		A.UpdateButtonIcon()

/obj/item/clothing/head/helmet/power_armor/t60
	name = "T-60 power helmet"
	desc = "An old pre-War power armor helmet.<br>It's very comfy."
	icon_state = "t60helmet"
	item_state = "t60helmet"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | STOPSPRESSUREDMAGE | BLOCK_GAS_SMOKE_EFFECT
	armor = list(melee = 110, bullet = 95, laser = 55, energy = 55, bomb = 45, bio = 100, rad = 100, fire = 100, acid = 100)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	put_on_delay = 300
	strip_delay = 300
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	actions_types = list(/datum/action/item_action/toggle_helmet_light)
	self_weight = 8
	flash_protect = 2

/obj/item/clothing/head/helmet/power_armor/t51b
	name = "T-51b power helmet"
	desc = "An old pre-War power armor helmet.<br>It's fairly comfy."
	icon_state = "t51bhelmet"
	item_state = "t51bhelmet"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | STOPSPRESSUREDMAGE | BLOCK_GAS_SMOKE_EFFECT
	armor = list(melee = 105, bullet = 90, laser = 50, energy = 50, bomb = 55, bio = 100, rad = 100, fire = 100, acid = 100)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	put_on_delay = 300
	strip_delay = 300
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	actions_types = list(/datum/action/item_action/toggle_helmet_light)
	self_weight = 8
	flash_protect = 2

/obj/item/clothing/head/helmet/power_armor/t45d
	name = "T-45d power helmet"
	desc = "An old pre-War power armor helmet.<br>The inside is stuffy and hot."
	icon_state = "t45dhelmet"
	item_state = "t45dhelmet"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | STOPSPRESSUREDMAGE | BLOCK_GAS_SMOKE_EFFECT
	armor = list(melee = 85, bullet = 85, laser = 45, energy = 45, bomb = 55, bio =100, rad = 100, fire = 100, acid = 100)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	put_on_delay = 300
	strip_delay = 300
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	actions_types = list(/datum/action/item_action/toggle_helmet_light)
	self_weight = 8
	flash_protect = 2

//NCR

/obj/item/clothing/head/helmet/power_armor/ncr
	name = "NCR power helmet"
	desc = "A pre-War power armor helmet, recovered and maintained by NCR engineers. It has a rack of cooling fans but only excessive padding for neck support."
	icon_state = "t45bhelmet"
	item_state = "t45bhelmet"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH
	armor = list(melee = 90, bullet = 90, laser = 35, energy = 35, bomb = 5, bio = 100, rad = 100, fire = 100, acid = 100) //ncr power armour has not received the same durability boost as theb ase durability is already rather high for its 'availability' on a non-whitelisted, non-admin event faction like the NCR.
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	put_on_delay = 125
	strip_delay = 125
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	actions_types = list(/datum/action/item_action/toggle_helmet_light)
	self_weight = 12
	flash_protect = 2

/obj/item/clothing/head/helmet/ncr/trooper
	name = "trooper helmet"
	desc = "A dully-colored helmet designed to provide troopers a basic head protection.<br>It has a very rough \"mass-produced\" look to it, as it is issued to all NCR soldiers and MPs."
	icon_state = "trooper"
	item_state = "trooper"
	armor = list(melee = 30, bullet = 20, laser = 10, energy = 10, bomb = 20, bio = 0, rad = 0, fire = 20, acid = 10)
	flags_inv = HIDEEARS|HIDEHAIR
	put_on_delay = 10
	strip_delay = 45
	resistance_flags = FIRE_PROOF
	self_weight = 1

/obj/item/clothing/head/helmet/f13/trooper
	name = "trooper helmet"
	desc = "A dully-colored helmet designed to provide troopers a basic head protection.<br>It has a very rough \"mass-produced\" look to it, as it is issued to all NCR soldiers and MPs."
	icon_state = "trooper"
	item_state = "trooper"
	armor = list(melee = 30, bullet = 20, laser = 10, energy = 10, bomb = 20, bio = 0, rad = 0, fire = 20, acid = 10)
	flags_inv = HIDEEARS
	put_on_delay = 10
	strip_delay = 30
	resistance_flags = FIRE_PROOF
	self_weight = 1

//Knights of the Apocalypse

/obj/item/clothing/head/helmet/knight
	name = "medieval helmet"
	desc = "A classic metal helmet worn by all ranks of knights and horsemen of the Old Era."
	icon_state = "knight_green"
	item_state = "knight_green"
	armor = list(melee = 40, bullet = 20, laser = 10, energy = 10, bomb = 20, bio = 0, rad = 0, fire = 20, acid = 20)
	flags = null
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	strip_delay = 80
	dog_fashion = null
	self_weight = 5

/obj/item/clothing/head/helmet/knight/blue
	name = "blue medieval helmet"
	desc = "A classic metal helmet worn by all ranks of knights and horsemen of the Old Era.<br>This one is painted blue."
	icon_state = "knight_blue"
	item_state = "knight_blue"

/obj/item/clothing/head/helmet/knight/yellow
	name = "yellow medieval helmet"
	desc = "A classic metal helmet worn by all ranks of knights and horsemen of the Old Era.<br>This one is painted yellow."
	icon_state = "knight_yellow"
	item_state = "knight_yellow"

/obj/item/clothing/head/helmet/knight/red
	name = "red medieval helmet"
	desc = "A classic metal helmet worn by all ranks of knights and horsemen of the Old Era.<br>This one is painted red."
	icon_state = "knight_red"
	item_state = "knight_red"

/obj/item/clothing/head/helmet/knight/templar
	name = "crusader helmet"
	desc = "Deus Vult."
	icon_state = "knight_templar"
	item_state = "knight_templar"

/obj/item/clothing/head/helmet/knight/f13/metal
	name = "metal helmet"
	desc = "A metal helmet forged in fire.<br>Specially designed for the most fearsome and strongest warriors of the wasteland."
	icon_state = "metalhelmet"
	item_state = "metalhelmet"

/obj/item/clothing/head/helmet/knight/f13/rider
	name = "rider helmet" //Not raider. Rider.
	desc = "A fancy dark metal helmet with orange spray-painted flames."
	icon_state = "rider"
	item_state = "rider"
	self_weight = 1
