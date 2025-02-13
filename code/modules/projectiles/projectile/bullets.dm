/obj/item/projectile/bullet
	name = "bullet" //this projectile is used by .357s, 7.62s and even .50 AE, so current statline fits rather well.
	icon_state = "bullet"
	damage = 50
	damage_type = BRUTE
	dismemberment = 1
	armour_penetration = 0
	nodamage = 0
	flag = "bullet"
	hitsound_wall = "ricochet"
	impact_effect_type = /obj/effect/overlay/temp/impact_effect

/obj/item/projectile/bullet/weakbullet //beanbag, heavy stamina damage
	damage = 10
	stamina = 80
	dismemberment = 0

/obj/item/projectile/bullet/weakbullet2 //used by .308
	damage = 24
	armour_penetration = 10
	dismemberment = 0

/obj/item/projectile/bullet/weakbullet3 // lowering damage on tihs one slightly, used by 9mms.
	damage = 22
	dismemberment = 0

/obj/item/projectile/bullet/weakbullet3/ap // ap service rifle ammo, low damage for the benefit of AP to deal with power armor
	damage = 9
	dismemberment = 0
	armour_penetration = 35

/obj/item/projectile/bullet/toxinbullet
	damage = 10
	damage_type = TOX
	dismemberment = 0

/obj/item/projectile/bullet/incendiary/firebullet
	damage = 10
	dismemberment = 0

/obj/item/projectile/bullet/sniper/haemorrhage/deagle
	name = "bullet"
	damage = 60
	dismemberment = 0.25

/obj/item/projectile/bullet/deagle
	name = "bullet"
	damage = 40 //lowering damage slightly to offset haemmorhage rounds.
	dismemberment = 0.25

/obj/item/projectile/bullet/deagle/two
	name = "bullet"
	damage = 55 //lowering damage as used by deagle skins, really shouldnt be doing like 15 extra damage.
	dismemberment = 0.25

/obj/item/projectile/bullet/webley //low velocity weapon, webley was reliable not necessarily known for its deadliness
	name = "bullet"
	damage = 35
	dismemberment = 0.4

/obj/item/projectile/bullet/bulldog //stripping weaken again, not a fan of guns causing stuns and think it drastically messes with combat.
	name = "bullet"
	damage = 68
	stamina = 50
	dismemberment = 0.4

/obj/item/projectile/bullet/bulldog/on_hit(atom/target, blocked = 0)
	if((blocked != 100) && iscarbon(target))
		var/mob/living/carbon/C = target
		C.bleed(100)
	return ..()

/obj/item/projectile/bullet/armourpiercing //9mm armour piercing round. designed for piercing heavy armour but wont necessarily do much damage
	damage = 6.8
	armour_penetration = 40
	dismemberment = 0

/obj/item/projectile/bullet/pellet
	name = "pellet"
	damage = 15
	dismemberment = 0.4

/obj/item/projectile/bullet/pellet/decimator
	name = "pellet"
	damage = 25
	dismemberment = 0.2

/obj/item/projectile/bullet/magnum
	name = "magnum round"
	damage = 80
	weaken = 3
	stamina = 50
	dismemberment = 1

/obj/item/projectile/bullet/roland
	name = ".45 round"
	damage = 90
	dismemberment = 1
	armour_penetration = 30

/obj/item/projectile/bullet/winchester
	name = ".30-30 round"
	damage = 80
	dismemberment = 1

/obj/item/projectile/bullet/pellet/weak/New()
	damage = 5
	range = rand(8)
	dismemberment = 0.1

/obj/item/projectile/bullet/pellet/weak/on_range()
 	var/datum/effect_system/spark_spread/sparks = new /datum/effect_system/spark_spread
 	sparks.set_up(1, 1, src)
 	sparks.start()
 	..()

/obj/item/projectile/bullet/pellet/overload/New()
	damage = 3
	range = rand(10)

/obj/item/projectile/bullet/pellet/overload/on_hit(atom/target, blocked = 0)
 	..()
 	explosion(target, 0, 0, 2)

/obj/item/projectile/bullet/pellet/overload/on_range()
 	explosion(src, 0, 0, 2)
 	var/datum/effect_system/spark_spread/sparks = new /datum/effect_system/spark_spread
 	sparks.set_up(3, 3, src)
 	sparks.start()
 	..()

/obj/item/projectile/bullet/midbullet
	damage = 35
	stamina = 65 //two round bursts from the c20r knocks people down
	dismemberment = 0.4


/obj/item/projectile/bullet/midbullet2
	damage = 26
	dismemberment = 0.6

/obj/item/projectile/bullet/midbullet3
	damage = 30
	dismemberment = 0.8

/obj/item/projectile/bullet/midbullet3/hp
	damage = 40
	armour_penetration = -50
	dismemberment = 0

/obj/item/projectile/bullet/midbullet3/ap
	damage = 40
	armour_penetration = 15
	dismemberment = 1

/obj/item/projectile/bullet/midbullet3/apm72gauss
	pass_flags = PASSTABLE | PASSGLASS | PASSGRILLE //velocity of proj means nothing can really stop it, should be firing through glass.
	damage = 35
	armour_penetration = 50

/obj/item/projectile/bullet/midbullet3cyborg3dprinted
	damage = 12
	armour_penetration = 15
	dismemberment = 0.2

/obj/item/projectile/bullet/midbullet3/fire/on_hit(atom/target, blocked = 0)
	if(..(target, blocked))
		var/mob/living/M = target
		M.adjust_fire_stacks(1)
		M.IgniteMob()

/obj/item/projectile/bullet/heavybullet
	damage = 35
	dismemberment = 1

/obj/item/projectile/bullet/rpellet
	damage = 3
	stamina = 25
	dismemberment = 0

/obj/item/projectile/bullet/stunshot //taser slugs for shotguns, nothing special
	name = "stunshot"
	damage = 5
	stun = 5
	weaken = 5
	stutter = 5
	jitter = 20
	range = 7
	icon_state = "spark"
	color = "#FFFF00"

/obj/item/projectile/bullet/incendiary/on_hit(atom/target, blocked = 0)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.adjust_fire_stacks(4)
		M.IgniteMob()


/obj/item/projectile/bullet/incendiary/shell
	name = "incendiary slug"
	damage = 20
	dismemberment = 0.5

/obj/item/projectile/bullet/incendiary/shell/Move()
	..()
	var/turf/location = get_turf(src)
	if(location)
		PoolOrNew(/obj/effect/hotspot, location)
		location.hotspot_expose(700, 50, 1)

/obj/item/projectile/bullet/incendiary/shell/dragonsbreath
	name = "dragonsbreath round"
	damage = 10
	dismemberment = 0


/obj/item/projectile/bullet/meteorshot
	name = "meteor"
	icon = 'icons/obj/meteor.dmi'
	icon_state = "dust"
	damage = 40
	weaken = 10
	stun = 10
	dismemberment = 10
	hitsound = 'sound/effects/meteorimpact.ogg'

/obj/item/projectile/bullet/meteorshot/weak
	damage = 10
	weaken = 4
	stun = 4

/obj/item/projectile/bullet/honker
	damage = 0
	weaken = 3
	stun = 3
	forcedodge = 1
	nodamage = 1
	hitsound = 'sound/items/bikehorn.ogg'
	icon = 'icons/obj/hydroponics/harvest.dmi'
	icon_state = "banana"
	range = 200

/obj/item/projectile/bullet/honker/New()
	..()
	SpinAnimation()

/obj/item/projectile/bullet/meteorshot/on_hit(atom/target, blocked = 0)
	. = ..()
	if(istype(target, /atom/movable))
		var/atom/movable/M = target
		var/atom/throw_target = get_edge_target_turf(M, get_dir(src, get_step_away(M, src)))
		M.throw_at(throw_target, 3, 2)

/obj/item/projectile/bullet/meteorshot/New()
	..()
	SpinAnimation()


/obj/item/projectile/bullet/mime
	damage = 5

/obj/item/projectile/bullet/mime/on_hit(atom/target, blocked = 0)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.silent = max(M.silent, 10)


/obj/item/projectile/bullet/dart
	name = "dart"
	icon_state = "cbbolt"
	damage = 10
	var/piercing = 0

/obj/item/projectile/bullet/dart/New()
	..()
	create_reagents(50)
	reagents.set_reacting(FALSE)

/obj/item/projectile/bullet/dart/on_hit(atom/target, blocked = 0)
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		if(blocked != 100) // not completely blocked
			if(M.can_inject(null, 0, def_zone, piercing)) // Pass the hit zone to see if it can inject by whether it hit the head or the body.
				..()
				reagents.reaction(M, INJECT)
				reagents.trans_to(M, reagents.total_volume)
				return 1
			else
				blocked = 100
				target.visible_message("<span class='danger'>The [name] was deflected!</span>", \
									   "<span class='userdanger'>You were protected against the [name]!</span>")

	..(target, blocked)
	reagents.set_reacting(TRUE)
	reagents.handle_reactions()
	return 1

/obj/item/projectile/bullet/dart/metalfoam/New()
	..()
	reagents.add_reagent("aluminium", 15)
	reagents.add_reagent("foaming_agent", 5)
	reagents.add_reagent("facid", 5)

//This one is for future syringe guns update
/obj/item/projectile/bullet/dart/syringe
	name = "syringe"
	icon_state = "syringeproj"

/obj/item/projectile/bullet/neurotoxin
	name = "neurotoxin spit"
	icon_state = "neurotoxin"
	damage = 5
	damage_type = TOX
	weaken = 5

/obj/item/projectile/bullet/neurotoxin/on_hit(atom/target, blocked = 0)
	if(isalien(target))
		weaken = 0
		nodamage = 1
	. = ..() // Execute the rest of the code.



//// SNIPER BULLETS

/obj/item/projectile/bullet/sniper
	speed = 0		//360 alwaysscope.
	damage = 50
	stamina = 80 //will now cause a stun after 2 hits on the same target, lasts for roughly 7 seconds if they dont have stamina regenerating chems in hte bloodstream
	dismemberment = 2
	armour_penetration = 50 //higher ap value
	var/breakthings = FALSE

/obj/item/projectile/bullet/sniper/on_hit(atom/target, blocked = 0)
	if((blocked != 100) && (!ismob(target) && breakthings))
		target.ex_act(rand(1,2))
	return ..()


/obj/item/projectile/bullet/sniper/soporific
	armour_penetration = 0
	nodamage = 1
	dismemberment = 0
	breakthings = FALSE

/obj/item/projectile/bullet/sniper/soporific/on_hit(atom/target, blocked = 0)
	if((blocked != 100) && isliving(target))
		var/mob/living/L = target
		L.Sleeping(20)
	return ..()


/obj/item/projectile/bullet/sniper/haemorrhage
	armour_penetration = -35
	damage = 90
	dismemberment = 1
	breakthings = FALSE

/obj/item/projectile/bullet/sniper/haemorrhage/on_hit(atom/target, blocked = 0)
	if((blocked != 100) && iscarbon(target))
		var/mob/living/carbon/C = target
		C.bleed(100)
	return ..()


/obj/item/projectile/bullet/sniper/penetrator
	icon_state = "gauss"
	name = "penetrator round"
	damage = 50 // slightly reduced damage
	forcedodge = 1
	dismemberment = 0.8
	breakthings = FALSE



//// SAW BULLETS


/obj/item/projectile/bullet/saw
	damage = 30
	armour_penetration = 5
	dismemberment = 0.5

/obj/item/projectile/bullet/saw/bleeding
	damage = 20
	armour_penetration = 0
	dismemberment = 1

/obj/item/projectile/bullet/saw/bleeding/on_hit(atom/target, blocked = 0)
	. = ..()
	if((blocked != 100) && iscarbon(target))
		var/mob/living/carbon/C = target
		C.bleed(35)

/obj/item/projectile/bullet/saw/hollow
	damage = 50
	armour_penetration = -10
	dismemberment = 0

/obj/item/projectile/bullet/saw/ap
	damage = 40
	armour_penetration = 75
	dismemberment = 0.8

/obj/item/projectile/bullet/saw/incen
	damage = 15
	armour_penetration = 5
	dismemberment = 0.5

/obj/item/projectile/bullet/saw/incen/Move()
	..()
	var/turf/location = get_turf(src)
	if(location)
		PoolOrNew(/obj/effect/hotspot, location)
		location.hotspot_expose(700, 50, 1)

/obj/item/projectile/bullet/saw/incen/on_hit(atom/target, blocked = 0)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.adjust_fire_stacks(3)
		M.IgniteMob()
