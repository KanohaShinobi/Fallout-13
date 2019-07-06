//Fallout 13 Brotherhood of Steel faction roles

/datum/job/elder
	title = "Elder"
	desc = "A mentor, the source of wisdom.<br>You are the one who shall fulfill destiny."
	flag = ELDER
	department_head = list("Brotherhood of Steel High Command")
	department_flag = ENGSEC
	faction = "bs"
	status = "elder"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Brotherhood of Steel High Command"
	selection_color = "#ec9d9d"
	minimal_player_age = 7
	whitelist_on = 0

	allowed_packs = list("starter", "cigarettes", "bard", "super_ten", "holsters")

	required_items = list(
	/obj/item/clothing/gloves/f13/military,
	/obj/item/clothing/under/f13/recon,
	/obj/item/clothing/head/soft/f13/utility/navy
	)

	denied_items = list(
	/obj/item/clothing/shoes/f13/rag,
	/obj/item/clothing/head/f13/pot,
	/obj/item/clothing/under/pants/f13/ghoul,
	/obj/item/clothing/under/pants/f13/cloth,
	/obj/item/clothing/under/pants/f13/caravan,
	/obj/item/clothing/under/f13/rag,
	/obj/item/clothing/under/f13/tribal,
	/obj/item/clothing/under/f13/female/tribal,
	/obj/item/clothing/under/f13/settler,
	/obj/item/clothing/under/f13/brahmin,
	/obj/item/clothing/under/f13/female/brahmin,
	/obj/item/clothing/under/f13/worn,
	/obj/item/clothing/suit/f13/mantle_liz
	)

	outfit = /datum/outfit/job/elder

	access = list(69)
	minimal_access = list()

/datum/outfit/job/elder
	name = "Elder"
	backpack = null
	uniform = /obj/item/clothing/under/f13/combat
	shoes = /obj/item/clothing/shoes/f13/military
	suit = /obj/item/clothing/suit/f13/elder
	weapon = /obj/item/weapon/gun/energy/laser/pistol
	back = /obj/item/weapon/twohanded/eldersword
	belt = /obj/item/weapon/storage/belt/military/brotherhoodbelt/full
	weapon = /obj/item/weapon/gun/energy/laser/rcw
	id = /obj/item/weapon/card/id/bos

/datum/job/elder/after_spawn(mob/living/carbon/human/H)
	. = ..()
	add_servant_of_ratvar(H)

	//Brotherhood Head Paladin

/datum/job/hpaladin
	title = "Head Paladin"
	desc = "The means of protecting technology goes above and beyond the value of anything else but your brothers and sisters,harness it."
	flag = HEADPALADIN
	department_head = list("elder")
	department_flag = ENGSEC
	faction = "bs"
	status = "headpaladin"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Elder"
	selection_color = "#ec9d9d"
	minimal_player_age = 7

	allowed_packs = list("starter", "cigarettes", "bard", "super_ten", "holsters")

	outfit = /datum/outfit/job/hpaladin

	required_items = list(
	/obj/item/clothing/under/f13/combat,
	/obj/item/weapon/twohanded/superhammer,
	/obj/item/weapon/gun/energy/laser/rcw
	)

	denied_items = list(
	/obj/item/clothing/shoes/f13/rag,
	/obj/item/clothing/head/f13/pot,
	/obj/item/clothing/under/pants/f13/ghoul,
	/obj/item/clothing/under/pants/f13/cloth,
	/obj/item/clothing/under/pants/f13/caravan,
	/obj/item/clothing/under/f13/rag,
	/obj/item/clothing/under/f13/tribal,
	/obj/item/clothing/under/f13/female/tribal,
	/obj/item/clothing/under/f13/settler,
	/obj/item/clothing/under/f13/brahmin,
	/obj/item/clothing/under/f13/female/brahmin,
	/obj/item/clothing/under/f13/worn,
	/obj/item/clothing/suit/f13/mantle_liz
	)

	access = list(69)
	minimal_access = list()

/datum/outfit/job/hpaladin
	name = "Head Paladin"
	backpack = null
	gloves = /obj/item/clothing/gloves/f13/military
	uniform = /obj/item/clothing/under/f13/recon
	shoes = /obj/item/clothing/shoes/f13/military
	suit = null
	back = /obj/item/weapon/gun/energy/laser/gaussrifle //requires upgraded power cell to use so didnt feel right to leave this as a choice, its now something head paladin gets by default but needs to wait for research before he can use.
	head = null
	belt = /obj/item/weapon/storage/belt/military/brotherhoodbelt/full
	weapon = null
	id = /obj/item/weapon/card/id/bos

/datum/job/hpaladin/after_spawn(mob/living/carbon/human/H)
	. = ..()
	add_servant_of_ratvar(H)

//Head Scribe

/datum/job/hscribe
	title = "Head Scribe"
	desc = "The studious..<br>Guide the Scribes and show the Knights and Paladins that knowledge is your best weapon."
	flag = HEADSCRIBE
	department_head = list("elder")
	department_flag = ENGSEC
	faction = "bs"
	status = "headscribe"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Elder"
	selection_color = "#ec9d9d"
	minimal_player_age = 7

	allowed_packs = list("starter", "cigarettes", "bard", "super_ten", "holsters")

	outfit = /datum/outfit/job/scribe

	required_items = list(
	/obj/item/clothing/under/f13/recon,
	/obj/item/weapon/gun/energy/laser/pistol
	)

	denied_items = list(
	/obj/item/clothing/shoes/f13/rag,
	/obj/item/clothing/head/f13/pot,
	/obj/item/clothing/under/pants/f13/ghoul,
	/obj/item/clothing/under/pants/f13/cloth,
	/obj/item/clothing/under/pants/f13/caravan,
	/obj/item/clothing/under/f13/rag,
	/obj/item/clothing/under/f13/tribal,
	/obj/item/clothing/under/f13/female/tribal,
	/obj/item/clothing/under/f13/settler,
	/obj/item/clothing/under/f13/brahmin,
	/obj/item/clothing/under/f13/female/brahmin,
	/obj/item/clothing/under/f13/worn,
	/obj/item/clothing/suit/f13/mantle_liz
	)

	access = list(69)
	minimal_access = list()

/datum/outfit/job/hscribe
	name = "Head Scribe"
	backpack = null
	satchel = null
	gloves = null
	uniform = /obj/item/clothing/under/f13/combat
	suit = /obj/item/clothing/suit/scribe
	shoes = /obj/item/clothing/shoes/f13/military
	head = null
	belt = /obj/item/weapon/storage/belt/military/brotherhoodbelt/full
	weapon = /obj/item/weapon/gun/energy/laser/pistol
	id = /obj/item/weapon/card/id/bos

/datum/job/hscribe/after_spawn(mob/living/carbon/human/H)
	. = ..()
	add_servant_of_ratvar(H)


//Brotherhood Paladin

/datum/job/paladin
	title = "Paladin"
	desc = "A guardian, the bringer of light.<br>You are the one who shall protect others."
	flag = PALADIN
	department_head = list("elder")
	department_flag = ENGSEC
	faction = "bs"
	status = "paladin"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Elder"
	selection_color = "#ec9d9d"
	minimal_player_age = 7

	allowed_packs = list("starter", "cigarettes", "bard", "super_ten", "holsters")

	outfit = /datum/outfit/job/paladin

	required_items = list(
	/obj/item/clothing/under/f13/combat,
	/obj/item/weapon/gun/energy/laser/rifle/aer13
	)

	denied_items = list(
	/obj/item/clothing/shoes/f13/rag,
	/obj/item/clothing/head/f13/pot,
	/obj/item/clothing/under/pants/f13/ghoul,
	/obj/item/clothing/under/pants/f13/cloth,
	/obj/item/clothing/under/pants/f13/caravan,
	/obj/item/clothing/under/f13/rag,
	/obj/item/clothing/under/f13/tribal,
	/obj/item/clothing/under/f13/female/tribal,
	/obj/item/clothing/under/f13/settler,
	/obj/item/clothing/under/f13/brahmin,
	/obj/item/clothing/under/f13/female/brahmin,
	/obj/item/clothing/under/f13/worn,
	/obj/item/clothing/suit/f13/mantle_liz
	)

	access = list(69)
	minimal_access = list()

/datum/outfit/job/paladin
	name = "Paladin"
	backpack = null
	gloves = /obj/item/clothing/gloves/f13/military
	uniform = /obj/item/clothing/under/f13/recon
	shoes = /obj/item/clothing/shoes/f13/military
	suit = null
	head = null
	belt = /obj/item/weapon/storage/belt/military/brotherhoodbelt/full
	weapon = null
	id = /obj/item/weapon/card/id/bos

/datum/job/paladin/after_spawn(mob/living/carbon/human/H)
	. = ..()
	add_servant_of_ratvar(H)

//Brotherhood Knight

/datum/job/knight
	title = "Knight"
	desc = "A warrior, the keeper of peace.<br>You are the one who shall bring justice."
	flag = KNIGHT
	department_head = list("elder", "headpaladin", "paladin")
	department_flag = ENGSEC
	faction = "bs"
	status = "knight"
	total_positions = 6
	spawn_positions = 2
	supervisors = "Elder, Paladin, Head Paladin"
	selection_color = "#ec9d9d"
	minimal_player_age = 7

	allowed_packs = list("starter", "cigarettes", "bard", "super_ten", "holsters")

	required_items = list(
	/obj/item/clothing/under/f13/combat
	)

	denied_items = list(
	/obj/item/clothing/shoes/f13/rag,
	/obj/item/clothing/head/f13/pot,
	/obj/item/clothing/under/pants/f13/ghoul,
	/obj/item/clothing/under/pants/f13/cloth,
	/obj/item/clothing/under/pants/f13/caravan,
	/obj/item/clothing/under/f13/rag,
	/obj/item/clothing/under/f13/tribal,
	/obj/item/clothing/under/f13/female/tribal,
	/obj/item/clothing/under/f13/settler,
	/obj/item/clothing/under/f13/brahmin,
	/obj/item/clothing/under/f13/female/brahmin,
	/obj/item/clothing/under/f13/worn,
	/obj/item/clothing/suit/f13/mantle_liz
	)


	outfit = /datum/outfit/job/knight

	access = list(69)
	minimal_access = list()

/datum/outfit/job/knight
	name = "Knight"
	backpack = null
	gloves = /obj/item/clothing/gloves/f13/military
	uniform = /obj/item/clothing/under/f13/recon
	shoes = /obj/item/clothing/shoes/f13/military
	suit = null
	head = null
	belt = /obj/item/weapon/storage/belt/military/brotherhoodbelt/full
	weapon = /obj/item/weapon/gun/energy/laser/rifle
	id = /obj/item/weapon/card/id/bos

/datum/job/knight/after_spawn(mob/living/carbon/human/H)
	. = ..()
	add_servant_of_ratvar(H)

//Scribes!!

/datum/job/scribe
	title = "Scribe"
	desc = "The studious..<br>Your knowledge and expertise guide your brothers to glory."
	flag = SCRIBE
	department_head = list("elder", "headpaladin", "paladin")
	department_flag = ENGSEC
	faction = "bs"
	status = "scribe"
	total_positions = 5
	spawn_positions = 3
	supervisors = "the Elder"
	selection_color = "#ec9d9d"
	minimal_player_age = 7

	allowed_packs = list("starter", "cigarettes", "bard", "super_ten", "holsters")

	outfit = /datum/outfit/job/scribe

	required_items = list(
	/obj/item/clothing/under/f13/recon,
	/obj/item/weapon/gun/energy/laser/pistol
	)

	denied_items = list(
	/obj/item/clothing/shoes/f13/rag,
	/obj/item/clothing/head/f13/pot,
	/obj/item/clothing/under/pants/f13/ghoul,
	/obj/item/clothing/under/pants/f13/cloth,
	/obj/item/clothing/under/pants/f13/caravan,
	/obj/item/clothing/under/f13/rag,
	/obj/item/clothing/under/f13/tribal,
	/obj/item/clothing/under/f13/female/tribal,
	/obj/item/clothing/under/f13/settler,
	/obj/item/clothing/under/f13/brahmin,
	/obj/item/clothing/under/f13/female/brahmin,
	/obj/item/clothing/under/f13/worn,
	/obj/item/clothing/suit/f13/mantle_liz
	)

	access = list(69)
	minimal_access = list()

/datum/outfit/job/scribe
	name = "Scribe"
	backpack = null
	gloves = null
	uniform = /obj/item/clothing/under/f13/combat
	suit = /obj/item/clothing/suit/scribe
	shoes = /obj/item/clothing/shoes/f13/military
	head = null
	belt = /obj/item/weapon/storage/belt/military/brotherhoodbelt/full
	weapon = /obj/item/weapon/gun/energy/laser/pistol
	id = /obj/item/weapon/card/id/bos

/datum/job/scribe/after_spawn(mob/living/carbon/human/H)
	. = ..()
	add_servant_of_ratvar(H)
