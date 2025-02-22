
//////////////////////////////////////////////////////////////////////////////////////////
					// MEDICINE REAGENTS
//////////////////////////////////////////////////////////////////////////////////////

// where all the reagents related to medicine go.

/datum/reagent/medicine
	name = "Medicine"
	id = "medicine"

/datum/reagent/medicine/on_mob_life(mob/living/M)
	current_cycle++
	holder.remove_reagent(src.id, metabolization_rate / M.metabolism_efficiency) //medicine reagents stay longer if you have a better metabolism

/datum/reagent/medicine/leporazine
	name = "Leporazine"
	id = "leporazine"
	description = "Leporazine will effectively regulate a patient's body temperature, ensuring it never leaves safe levels."
	color = "#C8A5DC" // rgb: 200, 165, 220

/datum/reagent/medicine/leporazine/on_mob_life(mob/living/M)
	if(M.bodytemperature > 310)
		M.bodytemperature = max(310, M.bodytemperature - (40 * TEMPERATURE_DAMAGE_COEFFICIENT))
	else if(M.bodytemperature < 311)
		M.bodytemperature = min(310, M.bodytemperature + (40 * TEMPERATURE_DAMAGE_COEFFICIENT))
	..()

/datum/reagent/medicine/adminordrazine //An OP chemical for admins
	name = "Adminordrazine"
	id = "adminordrazine"
	description = "It's magic. We don't have to explain it."
	color = "#C8A5DC" // rgb: 200, 165, 220
	can_synth = 0

/datum/reagent/medicine/adminordrazine/on_mob_life(mob/living/carbon/M)
	M.reagents.remove_all_type(/datum/reagent/toxin, 5*REM, 0, 1)
	M.setCloneLoss(0, 0)
	M.setOxyLoss(0, 0)
	M.radiation = 0
	M.heal_bodypart_damage(5,5, 0)
	M.adjustToxLoss(-5, 0)
	M.hallucination = 0
	M.setBrainLoss(0)
	M.disabilities = 0
	M.set_blurriness(0)
	M.set_blindness(0)
	M.SetWeakened(0, 0)
	M.SetStunned(0, 0)
	M.SetParalysis(0, 0)
	M.silent = 0
	M.dizziness = 0
	M.drowsyness = 0
	M.stuttering = 0
	M.slurring = 0
	M.confused = 0
	M.SetSleeping(0, 0)
	M.jitteriness = 0
	for(var/datum/disease/D in M.viruses)
		if(D.severity == NONTHREAT)
			continue
		D.spread_text = "Remissive"
		D.stage--
		if(D.stage < 1)
			D.cure()
	..()
	. = 1

/datum/reagent/medicine/adminordrazine/nanites
	name = "Nanites"
	id = "nanites"
	description = "Tiny nanomachines capable of rapid cellular regeneration."

/datum/reagent/medicine/synaptizine
	name = "Synaptizine"
	id = "synaptizine"
	description = "Increases resistance to stuns as well as reducing drowsiness and hallucinations."
	color = "#FF00FF"

/datum/reagent/medicine/synaptizine/on_mob_life(mob/living/M)
	M.drowsyness = max(M.drowsyness-5, 0)
	M.AdjustParalysis(-1, 0)
	M.AdjustStunned(-1, 0)
	M.AdjustWeakened(-1, 0)
	if(holder.has_reagent("mindbreaker"))
		holder.remove_reagent("mindbreaker", 5)
	M.hallucination = max(0, M.hallucination - 10)
	if(prob(30))
		M.adjustToxLoss(1, 0)
		. = 1
	..()

/datum/reagent/medicine/synaphydramine
	name = "Diphen-Synaptizine"
	id = "synaphydramine"
	description = "Reduces drowsiness, hallucinations, and Histamine from body."
	color = "#EC536D" // rgb: 236, 83, 109

/datum/reagent/medicine/synaphydramine/on_mob_life(mob/living/M)
	M.drowsyness = max(M.drowsyness-5, 0)
	if(holder.has_reagent("mindbreaker"))
		holder.remove_reagent("mindbreaker", 5)
	if(holder.has_reagent("histamine"))
		holder.remove_reagent("histamine", 5)
	M.hallucination = max(0, M.hallucination - 10)
	if(prob(30))
		M.adjustToxLoss(1, 0)
		. = 1
	..()

/datum/reagent/medicine/inacusiate
	name = "Inacusiate"
	id = "inacusiate"
	description = "Instantly restores all hearing to the patient, but does not cure deafness."
	color = "#6600FF" // rgb: 100, 165, 255
	metabolization_rate = 0.05 * REAGENTS_METABOLISM

/datum/reagent/medicine/inacusiate/on_mob_life(mob/living/M)
	M.setEarDamage(0,0)
	..()

/datum/reagent/medicine/cryoxadone
	name = "Cryoxadone"
	id = "cryoxadone"
	description = "A chemical mixture with almost magical healing powers. Its main limitation is that the patient's body temperature must be under 270K for it to metabolise correctly."
	color = "#0000C8"

/datum/reagent/medicine/cryoxadone/on_mob_life(mob/living/M)
	switch(M.bodytemperature) // Low temperatures are required to take effect.
		if(0 to 100) // At extreme temperatures (upgraded cryo) the effect is greatly increased.
			M.status_flags &= ~DISFIGURED
			M.adjustCloneLoss(-7, 0)
			M.adjustOxyLoss(-9, 0)
			M.adjustBruteLoss(-5, 0)
			M.adjustFireLoss(-5, 0)
			M.adjustToxLoss(-5, 0)
			. = 1
		if(100 to 225) // At lower temperatures (cryo) the full effect is boosted
			M.status_flags &= ~DISFIGURED
			M.adjustCloneLoss(-2, 0)
			M.adjustOxyLoss(-7, 0)
			M.adjustBruteLoss(-3, 0)
			M.adjustFireLoss(-3, 0)
			M.adjustToxLoss(-3, 0)
			. = 1
		if(225 to T0C)
			M.status_flags &= ~DISFIGURED
			M.adjustCloneLoss(-1, 0)
			M.adjustOxyLoss(-5, 0)
			M.adjustBruteLoss(-1, 0)
			M.adjustFireLoss(-1, 0)
			M.adjustToxLoss(-1, 0)
			. = 1
	..()


/datum/reagent/medicine/rezadone
	name = "Rezadone"
	id = "rezadone"
	description = "A powder derived from fish toxin, Rezadone can effectively treat genetic damage as well as restoring minor wounds. Overdose will cause intense nausea and minor toxin damage."
	reagent_state = SOLID
	color = "#669900" // rgb: 102, 153, 0
	overdose_threshold = 30

/datum/reagent/medicine/rezadone/on_mob_life(mob/living/M)
	M.setCloneLoss(0) //Rezadone is almost never used in favor of cryoxadone. Hopefully this will change that.
	M.heal_bodypart_damage(1,1, 0)
	M.status_flags &= ~DISFIGURED
	..()
	. = 1

/datum/reagent/medicine/rezadone/overdose_process(mob/living/M)
	M.adjustToxLoss(1, 0)
	M.Dizzy(5)
	M.Jitter(5)
	..()
	. = 1

/datum/reagent/medicine/spaceacillin
	name = "Spaceacillin"
	id = "spaceacillin"
	description = "Spaceacillin will prevent a patient from conventionally spreading any diseases they are currently infected with."
	color = "#C8A5DC" // rgb: 200, 165, 220
	metabolization_rate = 0.5 * REAGENTS_METABOLISM

//Goon Chems. Ported mainly from Goonstation. Easily mixable (or not so easily) and provide a variety of effects.
/datum/reagent/medicine/silver_sulfadiazine
	name = "Silver Sulfadiazine"
	id = "silver_sulfadiazine"
	description = "If used in touch-based applications, immediately restores burn wounds as well as restoring more over time. If ingested through other means, deals minor toxin damage."
	reagent_state = LIQUID
	color = "#C8A5DC"

/datum/reagent/medicine/silver_sulfadiazine/reaction_mob(mob/living/M, method=TOUCH, reac_volume, show_message = 1)
	if(iscarbon(M) && M.stat != DEAD)
		if(method in list(INGEST, VAPOR, INJECT))
			M.adjustToxLoss(0.5*reac_volume)
			if(show_message)
				to_chat(M, "<span class='warning'>You don't feel so good...</span>")
		else if(M.getFireLoss())
			M.adjustFireLoss(-reac_volume)
			if(show_message)
				to_chat(M, "<span class='danger'>You feel your burns healing! It stings like hell!</span>")
			M.emote("scream")
	..()

/datum/reagent/medicine/silver_sulfadiazine/on_mob_life(mob/living/M)
	M.adjustFireLoss(-2*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/oxandrolone
	name = "Oxandrolone"
	id = "oxandrolone"
	description = "Stimulates the healing of severe burns. Extremely rapidly heals severe burns and slowly heals minor ones. Overdose will worsen existing burns."
	reagent_state = LIQUID
	color = "#f7ffa5"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM
	overdose_threshold = 25

/datum/reagent/medicine/oxandrolone/on_mob_life(mob/living/M)
	if(M.getFireLoss() > 50)
		M.adjustFireLoss(-4*REM, 0) //Twice as effective as silver sulfadiazine for severe burns
	else
		M.adjustFireLoss(-0.5*REM, 0) //But only a quarter as effective for more minor ones
	..()
	. = 1

/datum/reagent/medicine/oxandrolone/overdose_process(mob/living/M)
	if(M.getFireLoss()) //It only makes existing burns worse
		M.adjustFireLoss(4.5*REM, 0) // it's going to be healing either 4 or 0.5
		. = 1
	..()

/datum/reagent/medicine/styptic_powder
	name = "Styptic Powder"
	id = "styptic_powder"
	description = "If used in touch-based applications, immediately restores bruising as well as restoring more over time. If ingested through other means, deals minor toxin damage."
	reagent_state = LIQUID
	color = "#FF9696"

/datum/reagent/medicine/styptic_powder/reaction_mob(mob/living/M, method=TOUCH, reac_volume, show_message = 1)
	if(iscarbon(M) && M.stat != DEAD)
		if(method in list(INGEST, VAPOR, INJECT))
			M.adjustToxLoss(0.5*reac_volume)
			if(show_message)
				to_chat(M, "<span class='warning'>You don't feel so good...</span>")
		else if(M.getBruteLoss())
			M.adjustBruteLoss(-reac_volume)
			if(show_message)
				to_chat(M, "<span class='danger'>You feel your bruises healing! It stings like hell!</span>")
			M.emote("scream")
	..()


/datum/reagent/medicine/styptic_powder/on_mob_life(mob/living/M)
	M.adjustBruteLoss(-2*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/salglu_solution
	name = "Saline-Glucose Solution"
	id = "salglu_solution"
	description = "Has a 33% chance per metabolism cycle to heal brute and burn damage.  Can be used as a blood substitute on an IV drip."
	reagent_state = LIQUID
	color = "#DCDCDC"
	metabolization_rate = 0.15 * REAGENTS_METABOLISM

/datum/reagent/medicine/salglu_solution/on_mob_life(mob/living/M)
	if(prob(33))
		M.adjustBruteLoss(-0.5*REM, 0)
		M.adjustFireLoss(-0.5*REM, 0)
		. = 1
	..()

/datum/reagent/medicine/salglu_solution/reaction_mob(mob/living/M, method=TOUCH, reac_volume, show_message = 1)
	if(ishuman(M) && method == INJECT)
		var/mob/living/carbon/human/H = M
		if(H.dna && !(NOBLOOD in H.dna.species.species_traits))
			var/efficiency = (BLOOD_VOLUME_NORMAL-H.blood_volume)/700 + 0.2//The lower the blood of the patient, the better it is as a blood substitute.
			efficiency = min(0.75,efficiency)
			//As it's designed for an IV drip, make large injections not as effective as repeated small injections.
			H.blood_volume += round(efficiency * min(5,reac_volume), 0.1)
	..()

/datum/reagent/medicine/mine_salve
	name = "Miner's Salve"
	id = "mine_salve"
	description = "A powerful painkiller. Restores bruising and burns in addition to making the patient believe they are fully healed."
	reagent_state = LIQUID
	color = "#6D6374"
	metabolization_rate = 0.4 * REAGENTS_METABOLISM

/datum/reagent/medicine/mine_salve/on_mob_life(mob/living/M)
	if(iscarbon(M))
		var/mob/living/carbon/N = M
		N.hal_screwyhud = 5
	M.adjustBruteLoss(-0.25*REM, 0)
	M.adjustFireLoss(-0.25*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/mine_salve/reaction_mob(mob/living/M, method=TOUCH, reac_volume, show_message = 1)
	if(iscarbon(M) && M.stat != DEAD)
		if(method in list(INGEST, VAPOR, INJECT))
			M.Stun(4)
			M.Weaken(4)
			if(show_message)
				to_chat(M, "<span class='warning'>Your stomach agonizingly cramps!</span>")
		else
			var/mob/living/carbon/C = M
			for(var/s in C.surgeries)
				var/datum/surgery/S = s
				S.success_multiplier = max(0.10, S.success_multiplier)
				// +10% success propability on each step, useful while operating in less-than-perfect conditions

			if(show_message)
				to_chat(M, "<span class='danger'>You feel your wounds fade away to nothing!</span>")//It's a painkiller, after all

	..()

/datum/reagent/medicine/mine_salve/on_mob_delete(mob/living/M)
	if(iscarbon(M))
		var/mob/living/carbon/N = M
		N.hal_screwyhud = 0
	..()

/datum/reagent/medicine/synthflesh
	name = "Synthflesh"
	id = "synthflesh"
	description = "Has a 100% chance of instantly healing brute and burn damage. One unit of the chemical will heal one point of damage. Touch application only."
	reagent_state = LIQUID
	color = "#FFEBEB"

/datum/reagent/medicine/synthflesh/reaction_mob(mob/living/M, method=TOUCH, reac_volume,show_message = 1)
	if(iscarbon(M))
		if (M.stat == DEAD)
			show_message = 0
		if(method in list(PATCH, TOUCH))
			M.adjustBruteLoss(-1.25 * reac_volume)
			M.adjustFireLoss(-1.25 * reac_volume)
			if(show_message)
				to_chat(M, "<span class='danger'>You feel your burns and bruises healing! It stings like hell!</span>")
	..()

/datum/reagent/medicine/charcoal
	name = "Charcoal"
	id = "charcoal"
	description = "Heals toxin damage as well as slowly removing any other chemicals the patient has in their bloodstream."
	reagent_state = LIQUID
	color = "#000000"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM

/datum/reagent/medicine/charcoal/on_mob_life(mob/living/M)
	M.adjustToxLoss(-2*REM, 0)
	. = 1
	for(var/datum/reagent/R in M.reagents.reagent_list)
		if(R != src)
			M.reagents.remove_reagent(R.id,1)
	..()

/datum/reagent/medicine/omnizine
	name = "Omnizine"
	id = "omnizine"
	description = "Slowly heals all damage types. Overdose will cause damage in all types instead."
	reagent_state = LIQUID
	color = "#DCDCDC"
	metabolization_rate = 0.25 * REAGENTS_METABOLISM
//	overdose_threshold = 30

/datum/reagent/medicine/omnizine/on_mob_life(mob/living/M)
	M.adjustToxLoss(-1.0*REM, 0)
	M.adjustOxyLoss(-1.0*REM, 0)
	M.adjustBruteLoss(-1.0*REM, 0)
	M.adjustFireLoss(-1.0*REM, 0)
	..()
	. = 1

/*/datum/reagent/medicine/omnizine/overdose_process(mob/living/M)
	M.adjustToxLoss(1.5*REM, 0)
	M.adjustOxyLoss(1.5*REM, 0)
	M.adjustBruteLoss(1.5*REM, 0)
	M.adjustFireLoss(1.5*REM, 0)
	..()
	. = 1
*/

/datum/reagent/medicine/calomel
	name = "Calomel"
	id = "calomel"
	description = "Quickly purges the body of all chemicals. Toxin damage is dealt if the patient is in good condition."
	reagent_state = LIQUID
	color = "#19C832"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM

/datum/reagent/medicine/calomel/on_mob_life(mob/living/M)
	for(var/datum/reagent/R in M.reagents.reagent_list)
		if(R != src)
			M.reagents.remove_reagent(R.id,2.5)
	if(M.health > 20)
		M.adjustToxLoss(2.5*REM, 0)
		. = 1
	..()

/datum/reagent/medicine/potass_iodide
	name = "Potassium Iodide"
	id = "potass_iodide"
	description = "Efficiently restores low radiation damage."
	reagent_state = LIQUID
	color = "#14FF3C"
	metabolization_rate = 2 * REAGENTS_METABOLISM

/datum/reagent/medicine/potass_iodide/on_mob_life(mob/living/M)
	if(M.radiation > 0)
		M.radiation--
	..()

/datum/reagent/medicine/pen_acid
	name = "Pentetic Acid"
	id = "pen_acid"
	description = "Reduces massive amounts of radiation and toxin damage while purging other chemicals from the body."
	reagent_state = LIQUID
	color = "#E6FFF0"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM

/datum/reagent/medicine/pen_acid/on_mob_life(mob/living/M)
	if(M.radiation > 0)
		M.radiation -= 4
	M.adjustToxLoss(-2*REM, 0)
	if(M.radiation < 0)
		M.radiation = 0
	for(var/datum/reagent/R in M.reagents.reagent_list)
		if(R != src)
			M.reagents.remove_reagent(R.id,2)
	..()
	. = 1

/datum/reagent/medicine/sal_acid
	name = "Salicyclic Acid"
	id = "sal_acid"
	description = "Stimulates the healing of severe bruises. Extremely rapidly heals severe bruising and slowly heals minor ones. Overdose will worsen existing bruising."
	reagent_state = LIQUID
	color = "#D2D2D2"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM
	overdose_threshold = 25


/datum/reagent/medicine/sal_acid/on_mob_life(mob/living/M)
	if(M.getBruteLoss() > 50)
		M.adjustBruteLoss(-4*REM, 0) //Twice as effective as styptic powder for severe bruising
	else
		M.adjustBruteLoss(-0.5*REM, 0) //But only a quarter as effective for more minor ones
	..()
	. = 1

/datum/reagent/medicine/sal_acid/overdose_process(mob/living/M)
	if(M.getBruteLoss()) //It only makes existing bruises worse
		M.adjustBruteLoss(4.5*REM, 0) // it's going to be healing either 4 or 0.5
		. = 1
	..()

/datum/reagent/medicine/salbutamol
	name = "Salbutamol"
	id = "salbutamol"
	description = "Rapidly restores oxygen deprivation as well as preventing more of it to an extent."
	reagent_state = LIQUID
	color = "#00FFFF"
	metabolization_rate = 0.25 * REAGENTS_METABOLISM

/datum/reagent/medicine/salbutamol/on_mob_life(mob/living/M)
	M.adjustOxyLoss(-3*REM, 0)
	if(M.losebreath >= 4)
		M.losebreath -= 2
	..()
	. = 1

/datum/reagent/medicine/perfluorodecalin
	name = "Perfluorodecalin"
	id = "perfluorodecalin"
	description = "Extremely rapidly restores oxygen deprivation, but inhibits speech. May also heal small amounts of bruising and burns."
	reagent_state = LIQUID
	color = "#FF6464"
	metabolization_rate = 0.25 * REAGENTS_METABOLISM

/datum/reagent/medicine/perfluorodecalin/on_mob_life(mob/living/carbon/human/M)
	M.adjustOxyLoss(-12*REM, 0)
	M.silent = max(M.silent, 5)
	if(prob(33))
		M.adjustBruteLoss(-0.5*REM, 0)
		M.adjustFireLoss(-0.5*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/ephedrine
	name = "Ephedrine"
	id = "ephedrine"
	description = "Increases stun resistance and movement speed. Overdose deals toxin damage and inhibits breathing."
	reagent_state = LIQUID
	color = "#D2FFFA"
	metabolization_rate = 1.5 * REAGENTS_METABOLISM // upped drain slightly
	overdose_threshold = 45
	addiction_threshold = 30

/datum/reagent/medicine/ephedrine/on_mob_life(mob/living/M)
	M.status_flags |= GOTTAGOFAST
	M.AdjustParalysis(-1, 0)
	M.AdjustStunned(-1, 0)
	M.AdjustWeakened(-1, 0)
	M.adjustStaminaLoss(-1*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/ephedrine/overdose_process(mob/living/M)
	if(prob(33))
		M.adjustToxLoss(0.5*REM, 0)
		M.losebreath++
		. = 1
	..()

/datum/reagent/medicine/ephedrine/addiction_act_stage1(mob/living/M)
	if(prob(33))
		M.adjustToxLoss(2*REM, 0)
		M.losebreath += 2
		. = 1
	..()

/datum/reagent/medicine/ephedrine/addiction_act_stage2(mob/living/M)
	if(prob(33))
		M.adjustToxLoss(3*REM, 0)
		M.losebreath += 3
		. = 1
	..()

/datum/reagent/medicine/ephedrine/addiction_act_stage3(mob/living/M)
	if(prob(33))
		M.adjustToxLoss(4*REM, 0)
		M.losebreath += 4
		. = 1
	..()

/datum/reagent/medicine/ephedrine/addiction_act_stage4(mob/living/M)
	if(prob(33))
		M.adjustToxLoss(5*REM, 0)
		M.losebreath += 5
		. = 1
	..()

/datum/reagent/medicine/diphenhydramine
	name = "Diphenhydramine"
	id = "diphenhydramine"
	description = "Rapidly purges the body of Histamine and reduces jitteriness. Slight chance of causing drowsiness."
	reagent_state = LIQUID
	color = "#64FFE6"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM

/datum/reagent/medicine/diphenhydramine/on_mob_life(mob/living/M)
	if(prob(10))
		M.drowsyness += 1
	M.jitteriness -= 1
	M.reagents.remove_reagent("histamine",3)
	..()

/datum/reagent/medicine/morphine
	name = "Morphine"
	id = "morphine"
	description = "A painkiller that allows the patient to move at full speed even in bulky objects. Causes drowsiness and eventually unconsciousness in high doses. Overdose will cause a variety of effects, ranging from minor to lethal."
	reagent_state = LIQUID
	color = "#A9FBFB"
	metabolization_rate = 0.55
	overdose_threshold = 30
	addiction_threshold = 25

/datum/reagent/medicine/morphine/on_mob_life(mob/living/M)
	M.status_flags |= IGNORESLOWDOWN
	switch(current_cycle)
		if(11)
			to_chat(M, "<span class='warning'>You start to feel tired...</span>")//Warning when the victim is starting to pass out

		if(12 to 24)
			M.drowsyness += 1
		if(24 to INFINITY)
			M.Sleeping(2, 0)
			. = 1
	..()

/datum/reagent/medicine/morphine/overdose_process(mob/living/M)
	if(prob(33))
		var/obj/item/I = M.get_active_held_item()
		if(I)
			M.drop_item()
		M.Dizzy(2)
		M.Jitter(2)
	..()

/datum/reagent/medicine/morphine/addiction_act_stage1(mob/living/M)
	if(prob(33))
		var/obj/item/I = M.get_active_held_item()
		if(I)
			M.drop_item()
		M.Dizzy(2)
		M.Jitter(2)
	..()

/datum/reagent/medicine/morphine/addiction_act_stage2(mob/living/M)
	if(prob(33))
		var/obj/item/I = M.get_active_held_item()
		if(I)
			M.drop_item()
		M.adjustToxLoss(1*REM, 0)
		. = 1
		M.Dizzy(3)
		M.Jitter(3)
	..()

/datum/reagent/medicine/morphine/addiction_act_stage3(mob/living/M)
	if(prob(33))
		var/obj/item/I = M.get_active_held_item()
		if(I)
			M.drop_item()
		M.adjustToxLoss(2*REM, 0)
		. = 1
		M.Dizzy(4)
		M.Jitter(4)
	..()

/datum/reagent/medicine/morphine/addiction_act_stage4(mob/living/M)
	if(prob(33))
		var/obj/item/I = M.get_active_held_item()
		if(I)
			M.drop_item()
		M.adjustToxLoss(3*REM, 0)
		. = 1
		M.Dizzy(5)
		M.Jitter(5)
	..()

/datum/reagent/medicine/oculine
	name = "Oculine"
	id = "oculine"
	description = "Quickly restores eye damage, cures nearsightedness, and has a chance to restore vision to the blind."
	reagent_state = LIQUID
	color = "#FFFFFF"
	metabolization_rate = 0.05 * REAGENTS_METABOLISM

/datum/reagent/medicine/oculine/on_mob_life(mob/living/M)
	if(M.disabilities & BLIND)
		if(prob(20))
			to_chat(M, "<span class='warning'>Your vision slowly returns...</span>")
			M.cure_blind()
			M.cure_nearsighted()
			M.blur_eyes(35)

	else if(M.disabilities & NEARSIGHT)
		to_chat(M, "<span class='warning'>The blackness in your peripheral vision fades.</span>")
		M.cure_nearsighted()
		M.blur_eyes(10)

	else if(M.eye_blind || M.eye_blurry)
		M.set_blindness(0)
		M.set_blurriness(0)
	else if(M.eye_damage > 0)
		M.adjust_eye_damage(-1)
	..()

/datum/reagent/medicine/atropine
	name = "Atropine"
	id = "atropine"
	description = "If a patient is in critical condition, rapidly heals all damage types as well as regulating oxygen in the body. Excellent for stabilizing wounded patients."
	reagent_state = LIQUID
	color = "#000000"
	metabolization_rate = 0.25 * REAGENTS_METABOLISM
	overdose_threshold = 35

/datum/reagent/medicine/atropine/on_mob_life(mob/living/M)
	if(M.health < 0)
		M.adjustToxLoss(-2*REM, 0)
		M.adjustBruteLoss(-2*REM, 0)
		M.adjustFireLoss(-2*REM, 0)
		M.adjustOxyLoss(-5*REM, 0)
		. = 1
	M.losebreath = 0
	if(prob(20))
		M.Dizzy(5)
		M.Jitter(5)
	..()

/datum/reagent/medicine/atropine/overdose_process(mob/living/M)
	M.adjustToxLoss(0.5*REM, 0)
	. = 1
	M.Dizzy(1)
	M.Jitter(1)
	..()

/datum/reagent/medicine/epinephrine
	name = "Epinephrine"
	id = "epinephrine"
	description = "Minor boost to stun resistance. Slowly heals damage if a patient is in critical condition, as well as regulating oxygen loss. Overdose causes weakness and toxin damage."
	reagent_state = LIQUID
	color = "#D2FFFA"
	metabolization_rate = 0.05 * REAGENTS_METABOLISM
	overdose_threshold = 50

/datum/reagent/medicine/epinephrine/on_mob_life(mob/living/M)
	if(M.health < 0)
		M.adjustToxLoss(-0.5*REM, 0)
		M.adjustBruteLoss(-0.5*REM, 0)
		M.adjustFireLoss(-0.5*REM, 0)
	if(M.oxyloss > 35)
		M.setOxyLoss(35, 0)
	if(M.losebreath >= 4)
		M.losebreath -= 2
	if(M.losebreath < 0)
		M.losebreath = 0
	M.adjustStaminaLoss(-0.5*REM, 0)
	. = 1
	if(prob(20))
		M.AdjustParalysis(-1, 0)
		M.AdjustStunned(-1, 0)
		M.AdjustWeakened(-1, 0)
	..()

/datum/reagent/medicine/epinephrine/overdose_process(mob/living/M)
	if(prob(33))
		M.adjustStaminaLoss(2.5*REM, 0)
		M.adjustToxLoss(1*REM, 0)
		M.losebreath++
		. = 1
	..()

/datum/reagent/medicine/strange_reagent
	name = "Strange Reagent"
	id = "strange_reagent"
	description = "A miracle drug capable of bringing the dead back to life. Only functions if the target has less than 100 brute and burn damage (independent of one another), and causes slight damage to the living."
	reagent_state = LIQUID
	color = "#A0E85E"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM

/datum/reagent/medicine/strange_reagent/reaction_mob(mob/living/carbon/human/M, method=TOUCH, reac_volume)
	if(M.stat == DEAD)
		if(M.getBruteLoss() >= 100 || M.getFireLoss() >= 100)
			M.visible_message("<span class='warning'>[M]'s body convulses a bit, and then falls still once more.</span>")
			return
		M.visible_message("<span class='warning'>[M]'s body convulses a bit.</span>")
		if(!M.suiciding && !(M.disabilities & NOCLONE) && !M.hellbound)
			if(!M)
				return
			if(M.notify_ghost_cloning(source = M))
				spawn (100) //so the ghost has time to re-enter
					return
			else
				M.adjustOxyLoss(-20, 0)
				M.adjustToxLoss(-20, 0)
				M.updatehealth()
				if(M.revive())
					M.emote("gasp")
					add_logs(M, M, "revived", src)
	..()

/datum/reagent/medicine/strange_reagent/on_mob_life(mob/living/M)
	M.adjustBruteLoss(0.5*REM, 0)
	M.adjustFireLoss(0.5*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/mannitol
	name = "Mannitol"
	id = "mannitol"
	description = "Efficiently restores brain damage."
	color = "#DCDCFF"
	metabolization_rate = 0.05 * REAGENTS_METABOLISM

/datum/reagent/medicine/mannitol/on_mob_life(mob/living/M)
	M.adjustBrainLoss(-3*REM)
	..()

/datum/reagent/medicine/mutadone
	name = "Mutadone"
	id = "mutadone"
	description = "Removes jitteriness and restores genetic defects."
	color = "#5096C8"

/datum/reagent/medicine/mutadone/on_mob_life(mob/living/carbon/human/M)
	M.jitteriness = 0
	if(M.has_dna())
		M.dna.remove_all_mutations()
	..()

/datum/reagent/medicine/antihol
	name = "Antihol"
	id = "antihol"
	description = "Purges alcoholic substance from the patient's body and eliminates its side effects."
	color = "#00B4C8"

/datum/reagent/medicine/antihol/on_mob_life(mob/living/M)
	M.dizziness = 0
	M.drowsyness = 0
	M.slurring = 0
	M.confused = 0
	M.reagents.remove_all_type(/datum/reagent/consumable/ethanol, 3*REM, 0, 1)
	M.adjustToxLoss(-0.2*REM, 0)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		H.drunkenness = max(H.drunkenness - 10, 0)
	..()
	. = 1

/datum/reagent/medicine/stimulants
	name = "Stimulants"
	id = "stimulants"
	description = "Increases stun resistance and movement speed in addition to restoring minor damage and weakness. Overdose causes weakness and toxin damage."
	color = "#78008C"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM
	overdose_threshold = 60

/datum/reagent/medicine/stimulants/on_mob_life(mob/living/M)
	M.status_flags |= GOTTAGOFAST
	if(M.health < 50 && M.health > 0)
		M.adjustOxyLoss(-1*REM, 0)
		M.adjustToxLoss(-1*REM, 0)
		M.adjustBruteLoss(-1*REM, 0)
		M.adjustFireLoss(-1*REM, 0)
	M.AdjustParalysis(-3, 0)
	M.AdjustStunned(-3, 0)
	M.AdjustWeakened(-3, 0)
	M.adjustStaminaLoss(-5*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/stimulants/overdose_process(mob/living/M)
	if(prob(33))
		M.adjustStaminaLoss(2.5*REM, 0)
		M.adjustToxLoss(1*REM, 0)
		M.losebreath++
		. = 1
	..()

/datum/reagent/medicine/stimulants/longterm
	name = "Stimulants"
	id = "stimulants_longterm"
	description = "Increases stun resistance and movement speed in addition to restoring minor damage and weakness. Highly addictive."
	color = "#78008C"
	metabolization_rate = 2 * REAGENTS_METABOLISM
	overdose_threshold = 0
	addiction_threshold = 5

/datum/reagent/medicine/stimulants/longterm/addiction_act_stage1(mob/living/M)
	M.adjustToxLoss(5*REM, 0)
	M.adjustStaminaLoss(5*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/stimulants/longterm/addiction_act_stage2(mob/living/M)
	M.adjustToxLoss(6*REM, 0)
	M.adjustStaminaLoss(5*REM, 0)
	M.Stun(2, 0)
	..()
	. = 1

/datum/reagent/medicine/stimulants/longterm/addiction_act_stage3(mob/living/M)
	M.adjustToxLoss(7*REM, 0)
	M.adjustStaminaLoss(5*REM, 0)
	M.adjustBrainLoss(1*REM)
	M.Stun(2, 0)
	..()
	. = 1

/datum/reagent/medicine/stimulants/longterm/addiction_act_stage4(mob/living/M)
	M.adjustToxLoss(8*REM, 0)
	M.adjustStaminaLoss(5*REM, 0)
	M.adjustBrainLoss(2*REM)
	M.Stun(2, 0)
	..()
	. = 1

/datum/reagent/medicine/insulin
	name = "Insulin"
	id = "insulin"
	description = "Increases sugar depletion rates."
	reagent_state = LIQUID
	color = "#FFFFF0"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM

/datum/reagent/medicine/insulin/on_mob_life(mob/living/M)
	if(M.sleeping)
		M.AdjustSleeping(-1, 0)
		. = 1
	M.reagents.remove_reagent("sugar", 3)
	..()

//Trek Chems, used primarily by medibots. Only heals a specific damage type, but is very efficient.
/datum/reagent/medicine/bicaridine
	name = "Bicaridine"
	id = "bicaridine"
	description = "Restores bruising. Overdose causes it instead."
	reagent_state = LIQUID
	color = "#C8A5DC"
	overdose_threshold = 30

/datum/reagent/medicine/bicaridine/on_mob_life(mob/living/M)
	M.adjustBruteLoss(-2*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/bicaridine/overdose_process(mob/living/M)
	M.adjustBruteLoss(4*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/dexalin
	name = "Dexalin"
	id = "dexalin"
	description = "Restores oxygen loss. Overdose causes it instead."
	reagent_state = LIQUID
	color = "#C8A5DC"
	overdose_threshold = 30

/datum/reagent/medicine/dexalin/on_mob_life(mob/living/M)
	M.adjustOxyLoss(-2*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/dexalin/overdose_process(mob/living/M)
	M.adjustOxyLoss(4*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/kelotane
	name = "Kelotane"
	id = "kelotane"
	description = "Restores fire damage. Overdose causes it instead."
	reagent_state = LIQUID
	color = "#C8A5DC"
	overdose_threshold = 30

/datum/reagent/medicine/kelotane/on_mob_life(mob/living/M)
	M.adjustFireLoss(-2*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/kelotane/overdose_process(mob/living/M)
	M.adjustFireLoss(4*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/antitoxin
	name = "Anti-Toxin"
	id = "antitoxin"
	description = "Heals toxin damage and removes toxins in the bloodstream. Overdose causes toxin damage."
	reagent_state = LIQUID
	color = "#C8A5DC"
	overdose_threshold = 30

/datum/reagent/medicine/antitoxin/on_mob_life(mob/living/M)
	M.adjustToxLoss(-2*REM, 0)
	for(var/datum/reagent/toxin/R in M.reagents.reagent_list)
		if(R != src)
			M.reagents.remove_reagent(R.id,1)
	..()
	. = 1

/datum/reagent/medicine/antitoxin/overdose_process(mob/living/M)
	M.adjustToxLoss(4*REM, 0) // End result is 2 toxin loss taken, because it heals 2 and then removes 4.
	..()
	. = 1

/datum/reagent/medicine/inaprovaline
	name = "Inaprovaline"
	id = "inaprovaline"
	description = "Stabilizes the breathing of patients. Good for those in critical condition."
	reagent_state = LIQUID
	color = "#C8A5DC"

/datum/reagent/medicine/inaprovaline/on_mob_life(mob/living/M)
	if(M.losebreath >= 5)
		M.losebreath -= 5
	..()

/datum/reagent/medicine/tricordrazine
	name = "Tricordrazine"
	id = "tricordrazine"
	description = "Has a high chance to heal all types of damage. Overdose instead causes it."
	reagent_state = LIQUID
	color = "#C8A5DC"
	overdose_threshold = 30

/datum/reagent/medicine/tricordrazine/on_mob_life(mob/living/M)
	if(prob(80))
		M.adjustBruteLoss(-1*REM, 0)
		M.adjustFireLoss(-1*REM, 0)
		M.adjustOxyLoss(-1*REM, 0)
		M.adjustToxLoss(-1*REM, 0)
		. = 1
	..()

/datum/reagent/medicine/tricordrazine/overdose_process(mob/living/M)
	M.adjustToxLoss(2*REM, 0)
	M.adjustOxyLoss(2*REM, 0)
	M.adjustBruteLoss(2*REM, 0)
	M.adjustFireLoss(2*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/syndicate_nanites //Used exclusively by Syndicate medical cyborgs
	name = "Restorative Nanites"
	id = "syndicate_nanites"
	description = "Miniature medical robots that swiftly restore bodily damage."
	reagent_state = SOLID
	color = "#555555"

/datum/reagent/medicine/syndicate_nanites/on_mob_life(mob/living/M)
	M.adjustBruteLoss(-5*REM, 0) //A ton of healing - this is a 50 telecrystal investment.
	M.adjustFireLoss(-5*REM, 0)
	M.adjustOxyLoss(-15, 0)
	M.adjustToxLoss(-5*REM, 0)
	M.adjustBrainLoss(-15*REM)
	M.adjustCloneLoss(-3*REM, 0)
	..()
	. = 1
	
/datum/reagent/medicine/tricordrazine/overdose_process(mob/living/M)
	M.adjustToxLoss(2*REM, 0)
	M.adjustOxyLoss(2*REM, 0)
	M.adjustBruteLoss(2*REM, 0)
	M.adjustFireLoss(2*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/psychocorazine
	name = "Psychocorazine"
	id = "psychocorazine"
	description = "The active chemical in psycho, significantly boosts the user's tolerance for pain and overall endurance."
	reagent_state = SOLID
	color = "#555555"
	metabolization_rate = 0.6

/datum/reagent/medicine/psychocorazine/on_mob_life(mob/living/M)
	M.adjustBruteLoss(-0.5*REM, 0)
	M.adjustFireLoss(-0.5*REM, 0)
	M.adjustOxyLoss(-7, 0)
	M.adjustBrainLoss(-7*REM)
	M.adjustToxLoss(-0.5*REM, 0)
	M.AdjustParalysis(-3, 0)
	M.AdjustStunned(-3, 0)
	M.AdjustWeakened(-3, 0)
	M.adjustStaminaLoss(-5*REM, 0)
	M.status_flags |= IGNORESLOWDOWN
	..()
	. = 1

/datum/reagent/medicine/earthsblood //Created by ambrosia gaia plants
	name = "Earthsblood"
	id = "earthsblood"
	description = "Ichor from an extremely powerful plant. Great for restoring wounds, but it's a little heavy on the brain."
	color = rgb(255, 175, 0)
	overdose_threshold = 25

/datum/reagent/medicine/earthsblood/on_mob_life(mob/living/M)
	M.adjustBruteLoss(-3 * REM, 0)
	M.adjustFireLoss(-3 * REM, 0)
	M.adjustOxyLoss(-15 * REM, 0)
	M.adjustToxLoss(-3 * REM, 0)
	M.adjustBrainLoss(2 * REM) //This does, after all, come from ambrosia, and the most powerful ambrosia in existence, at that!
	M.adjustCloneLoss(-1 * REM, 0)
	M.adjustStaminaLoss(-30 * REM, 0)
	M.jitteriness = min(max(0, M.jitteriness + 3), 30)
	M.druggy = min(max(0, M.druggy + 10), 15) //See above
	..()
	. = 1

/datum/reagent/medicine/earthsblood/overdose_process(mob/living/M)
	M.hallucination = min(max(0, M.hallucination + 10), 50)
	M.adjustToxLoss(5 * REM, 0)
	..()
	. = 1

/datum/reagent/medicine/haloperidol
	name = "Haloperidol"
	id = "haloperidol"
	description = "Increases depletion rates for most stimulating/hallucinogenic drugs. Reduces druggy effects and jitteriness. Severe stamina regeneration penalty, causes drowsiness. Small chance of brain damage."
	reagent_state = LIQUID
	color = "#27870a"
	metabolization_rate = 0.4 * REAGENTS_METABOLISM

/datum/reagent/medicine/haloperidol/on_mob_life(mob/living/M)
	for(var/datum/reagent/drug/R in M.reagents.reagent_list)
		M.reagents.remove_reagent(R.id,5)
	M.drowsyness += 2
	if(M.jitteriness >= 3)
		M.jitteriness -= 3
	if (M.hallucination >= 5)
		M.hallucination -= 5
	if(prob(20))
		M.adjustBrainLoss(1*REM)
	M.adjustStaminaLoss(2.5*REM, 0)
	..()
	. = 1

/datum/reagent/medicine/miningnanites
	name = "Nanites"
	id = "miningnanites"
	description = "It's mining magic. We don't have to explain it."
	color = "#C8A5DC" // rgb: 200, 165, 220
	overdose_threshold = 3 //To prevent people stacking massive amounts of a very strong healing reagent
	can_synth = 0

/datum/reagent/medicine/miningnanites/on_mob_life(mob/living/M)
	M.heal_bodypart_damage(5,5, 0)
	..()
	. = 1

/datum/reagent/medicine/miningnanites/overdose_process(mob/living/M)
	M.adjustBruteLoss(3*REM, 0)
	M.adjustFireLoss(3*REM, 0)
	M.adjustToxLoss(3*REM, 0)
	..()
	. = 1

//used for changeling's adrenaline power
/datum/reagent/medicine/adrenaline_cocktail
	name = "Adrenaline Cocktail"
	id = "adrenaline_cocktail"
	description = "Reduces stun times. Also deals toxin damage at high amounts."
	color = "#C8A5DC"
	overdose_threshold = 30

/datum/reagent/medicine/adrenaline_cocktail/on_mob_life(mob/living/M as mob)
	M.AdjustParalysis(-2, 0)
	M.AdjustStunned(-2, 0)
	M.AdjustWeakened(-2, 0)
	M.adjustStaminaLoss(-2, 0)
	. = 1
	..()

/datum/reagent/medicine/adrenaline_cocktail/overdose_process(mob/living/M as mob)
	M.adjustToxLoss(1, 0)
	. = 1
	..()

/datum/reagent/medicine/hyperepinephrine
	name = "Hyperepinephrine Solution"
	id = "hyperepinephrine"
	description = "Drastically increases oxygen and blood movement through the body, allowing increased movement speeds without fatigue."
	color = "#C8A5DC"
	metabolization_rate = 0.7

/datum/reagent/medicine/hyperepinephrine/on_mob_life(mob/living/M as mob)
	M.status_flags |= GOTTAGOFAST
	M.adjustToxLoss(0.5, 0)
	. = 1
	..()
	
/datum/reagent/medicine/musclestimulant
	name = "Muscle Stimulant"
	id = "musclestimulant"
	description = "A cocktail of stimulants targeted at the cardiovascular system, allowing for significantly improved pain endurance and recovery from fatigue."
	reagent_state = LIQUID
	color = "#A9FBFB"
	metabolization_rate = 0.2

/datum/reagent/medicine/musclestimulant/on_mob_life(mob/living/M)
	M.status_flags |= IGNORESLOWDOWN
	M.adjustBruteLoss(0.2*REM, 0)
	M.adjustFireLoss(0.2*REM, 0)
	M.adjustToxLoss(0.2*REM, 0)
	M.AdjustParalysis(-3, 0)
	M.AdjustStunned(-3, 0)
	M.AdjustWeakened(-3, 0)
	M.adjustStaminaLoss(-2.5*REM, 0)
	. = 1
	..()
