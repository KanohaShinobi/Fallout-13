/obj/item/projectile/beam
	name = "laser"
	icon_state = "laser"
	pass_flags = PASSTABLE | PASSGLASS | PASSGRILLE
	damage = 25
	light_color = LIGHT_COLOR_RED
	damage_type = BURN
	hitsound = 'sound/weapons/sear.ogg'
	hitsound_wall = 'sound/weapons/effects/searwall.ogg'
	flag = "laser"
	impact_effect_type = /obj/effect/overlay/temp/impact_effect/red_laser

/obj/item/projectile/beam/fire(setAngle, atom/direct_target)
	set_light(1)
	..()
	
/obj/item/projectile/beam/laser/gatling
	name = "gatling laser"
	damage = 9
	armour_penetration = 20
	
/obj/item/projectile/beam/laser/gatlingforrobots
	name = "gatling laser"
	damage = 6
	armour_penetration = 50

/obj/item/projectile/beam/laser

/obj/item/projectile/beam/laser/laerbolt
	name = "electric bolt"
	damage = 40
	stamina = 30 //has the potential to stun people in power armor with enough hits, anyone in lighter armor ends up dead long before then
	icon_state = "omnilaser"
	light_color = LIGHT_COLOR_BLUE
	impact_effect_type = /obj/effect/overlay/temp/impact_effect/blue_laser

/obj/item/projectile/beam/laser/gauss2mm
	name = "2mm bolt"
	damage = 85
	armour_penetration = 200
	dismemberment = 30 //reduced instant decap on headshot, should result in less 1shot kills while still insta critting
	icon_state = "2mm"
	pass_flags = PASSTABLE | PASSGLASS | PASSGRILLE
	light_color = LIGHT_COLOR_BLUE
	damage_type = BRUTE
	hitsound = null
	hitsound_wall = "ricochet"
	impact_effect_type = /obj/effect/overlay/temp/impact_effect/blue_laser

/obj/item/projectile/beam/laser/heavylaser
	name = "heavy laser"
	icon_state = "heavylaser"
	damage = 32
	armour_penetration = 5

/obj/item/projectile/beam/laser/on_hit(atom/target, blocked = 0)
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.IgniteMob()
	else if(isturf(target))
		impact_effect_type = /obj/effect/overlay/temp/impact_effect/red_laser/wall
	. = ..()

/obj/item/projectile/beam/weak
	damage = 16

/obj/item/projectile/beam/practice
	name = "practice laser"
	damage = 0
	nodamage = 1

/obj/item/projectile/beam/scatter
	name = "laser pellet"
	icon_state = "scatterlaser"
	damage = 3

/obj/item/projectile/beam/xray
	name = "xray beam"
	icon_state = "xray"
	damage = 10
	irradiate = 25
	range = 15
	forcedodge = 1
	impact_effect_type = /obj/effect/overlay/temp/impact_effect/green_laser

/obj/item/projectile/beam/disabler
	name = "disabler beam"
	icon_state = "omnilaser"
	damage = 25
	damage_type = STAMINA
	flag = "energy"
	hitsound = 'sound/weapons/tap.ogg'
	eyeblur = 0
	impact_effect_type = /obj/effect/overlay/temp/impact_effect/blue_laser

/obj/item/projectile/beam/pulse
	name = "pulse"
	icon_state = "u_laser"
	damage = 32
	light_range = 2
	impact_effect_type = /obj/effect/overlay/temp/impact_effect/blue_laser

/obj/item/projectile/beam/pulse/on_hit(atom/target, blocked = 0)
	. = ..()
	if(isturf(target) || istype(target,/obj/structure/))
		target.ex_act(2)

/obj/item/projectile/beam/pulse/shot
	damage = 34

/obj/item/projectile/beam/pulse/heavy
	name = "heavy pulse laser"
	icon_state = "pulse1_bl"
	var/life = 20

/obj/item/projectile/beam/pulse/heavy/on_hit(atom/target, blocked = 0)
	life -= 10
	if(life > 0)
		. = -1
	..()

/obj/item/projectile/beam/emitter
	name = "emitter beam"
	icon_state = "emitter"
	damage = 30
	legacy = 1
	light_range = 2
	animate_movement = SLIDE_STEPS
	impact_effect_type = /obj/effect/overlay/temp/impact_effect/green_laser

/obj/item/projectile/beam/emitter/singularity_pull()
	return //don't want the emitters to miss

/obj/item/projectile/beam/emitter/Destroy()
	..()
	return QDEL_HINT_PUTINPOOL

/obj/item/projectile/beam/lasertag
	name = "laser tag beam"
	icon_state = "omnilaser"
	hitsound = null
	damage = 0
	damage_type = STAMINA
	flag = "laser"
	var/suit_types = list(/obj/item/clothing/suit/redtag, /obj/item/clothing/suit/bluetag)
	impact_effect_type = /obj/effect/overlay/temp/impact_effect/blue_laser

/obj/item/projectile/beam/lasertag/on_hit(atom/target, blocked = 0)
	. = ..()
	if(ishuman(target))
		var/mob/living/carbon/human/M = target
		if(istype(M.wear_suit))
			if(M.wear_suit.type in suit_types)
				M.adjustStaminaLoss(34)

/obj/item/projectile/beam/lasertag/redtag
	icon_state = "laser"
	suit_types = list(/obj/item/clothing/suit/bluetag)
	impact_effect_type = /obj/effect/overlay/temp/impact_effect/red_laser

/obj/item/projectile/beam/lasertag/bluetag
	icon_state = "bluelaser"
	suit_types = list(/obj/item/clothing/suit/redtag)

/obj/item/projectile/beam/instakill
	name = "instagib laser"
	icon_state = "purple_laser"
	damage = 200
	damage_type = BURN
	impact_effect_type = /obj/effect/overlay/temp/impact_effect/purple_laser

/obj/item/projectile/beam/instakill/blue
	icon_state = "blue_laser"
	impact_effect_type = /obj/effect/overlay/temp/impact_effect/blue_laser

/obj/item/projectile/beam/instakill/red
	icon_state = "red_laser"
	impact_effect_type = /obj/effect/overlay/temp/impact_effect/red_laser

/obj/item/projectile/beam/instakill/on_hit(atom/target)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.visible_message("<span class='danger'>[M] explodes into a shower of gibs!</span>")
		M.gib()

