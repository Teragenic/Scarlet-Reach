/obj/item/ritechalk
	name = "Ritual Chalk"
	icon_state = "chalk"
	desc = "Simple white chalk. A useful tool for rites."
	icon = 'icons/roguetown/misc/rituals.dmi'
	w_class = WEIGHT_CLASS_TINY
	experimental_inhand = FALSE

/obj/item/ritechalk/attack_self(mob/living/user)
	if(!HAS_TRAIT(user, TRAIT_RITUALIST) && !((user.get_skill_level(/datum/skill/magic/arcane)) > SKILL_LEVEL_NONE))
		to_chat(user, span_smallred("I don't know what I'm doing with this..."))
		return

	var/ritechoices = list()
	if(HAS_TRAIT(user, TRAIT_RITUALIST))
		switch (user.patron?.type)
			if(/datum/patron/inhumen/graggar)
				ritechoices+="Rune of Violence"
			if(/datum/patron/inhumen/zizo)
				ritechoices+="Rune of ZIZO" 
			if(/datum/patron/inhumen/matthios)
				ritechoices+="Rune of Transaction" 
			if(/datum/patron/inhumen/baotha) 
				ritechoices+="Rune of Desire"
			if(/datum/patron/divine/astrata)
				ritechoices+="Rune of Sun"
			if(/datum/patron/divine/noc)
				ritechoices+="Rune of Moon"
			if(/datum/patron/divine/dendor)
				ritechoices+="Rune of Beasts"
			if(/datum/patron/divine/malum)
				ritechoices+="Rune of Forge"
			if(/datum/patron/divine/xylix)
				ritechoices+="Rune of Trickery"
			if(/datum/patron/divine/necra)
				ritechoices+="Rune of Death"
			if(/datum/patron/divine/pestra)
				ritechoices+="Rune of Plague"
			if(/datum/patron/divine/eora)
				ritechoices+="Rune of Love"
			if(/datum/patron/divine/ravox)
				ritechoices+="Rune of Justice"
			if(/datum/patron/divine/abyssor)
				ritechoices+="Rune of Storm"
			if(/datum/patron/old_god)
				ritechoices+="Rune of Enduring"

	if((user.get_skill_level(/datum/skill/magic/arcane)) > SKILL_LEVEL_NONE)
		ritechoices += "Confinement Matrix, Weak"
		ritechoices += "Imbuement Array, Low"
		ritechoices += "Wall Accession Matrix, Weak"

	var/runeselection = input(user, "Which rune shall I inscribe?", src) as null|anything in ritechoices
	var/turf/step_turf = get_turf(user)
	switch(runeselection)
		if("Rune of Sun")
			to_chat(user,span_cultsmall("I begin inscribing the rune of Her Radiance..."))
			if(do_after(user, 30, src))
				playsound(src, 'sound/foley/scribble.ogg', 40, TRUE)
				new /obj/structure/ritualcircle/astrata(step_turf)
		if("Rune of Moon")
			to_chat(user, span_cultsmall("I begin inscribing the rune of His Wisdom..."))
			if(do_after(user, 30, src))
				playsound(src, 'sound/foley/scribble.ogg', 40, TRUE)
				new /obj/structure/ritualcircle/noc(step_turf)
		if("Rune of Beasts")
			to_chat(user,span_cultsmall("I begin inscribing the rune of His Madness..."))
			if(do_after(user, 30, src))
				playsound(src, 'sound/foley/scribble.ogg', 40, TRUE)
				new /obj/structure/ritualcircle/dendor(step_turf)
		if("Rune of Forge")
			to_chat(user,span_cultsmall("I begin inscribing the rune of Their Craft..."))
			if(do_after(user, 30, src))
				playsound(src, 'sound/foley/scribble.ogg', 40, TRUE)
				new /obj/structure/ritualcircle/malum(step_turf)
		if("Rune of Trickery")
			to_chat(user,span_cultsmall("I begin inscribing the rune of His Trickery..."))
			if(do_after(user, 30, src))
				playsound(src, 'sound/foley/scribble.ogg', 40, TRUE)
				new /obj/structure/ritualcircle/xylix(step_turf)
		if("Rune of Death")
			to_chat(user,span_cultsmall("I begin inscribing the rune of Her Embrace..."))
			if(do_after(user, 30, src))
				playsound(src, 'sound/foley/scribble.ogg', 40, TRUE)
				new /obj/structure/ritualcircle/necra(step_turf)
		if("Rune of Plague")
			to_chat(user,span_cultsmall("I begin inscribing the rune of Her Plague..."))
			if(do_after(user, 30, src))
				playsound(src, 'sound/foley/scribble.ogg', 40, TRUE)
				new /obj/structure/ritualcircle/pestra(step_turf)
		if("Rune of Love")
			to_chat(user,span_cultsmall("I begin inscribing the rune of Her Love..."))
			if(do_after(user, 30, src))
				playsound(src, 'sound/foley/scribble.ogg', 40, TRUE)
				new /obj/structure/ritualcircle/eora(step_turf)
		if("Rune of Justice")
			to_chat(user,span_cultsmall("I begin inscribing the rune of His Prowess..."))
			if(do_after(user, 30, src))
				playsound(src, 'sound/foley/scribble.ogg', 40, TRUE)
				new /obj/structure/ritualcircle/ravox(step_turf)
		if("Rune of Storm")
			to_chat(user,span_cultsmall("I begin inscribing the rune of His Storm..."))
			if(do_after(user, 30, src))
				playsound(src, 'sound/foley/scribble.ogg', 40, TRUE)
				new /obj/structure/ritualcircle/abyssor(step_turf)
		if("Rune of Enduring")
			to_chat(user,span_cultsmall("I begin inscribing His holy symbol..."))
			if(do_after(user, 30, src))
				playsound(src, 'sound/foley/scribble.ogg', 40, TRUE)
				new /obj/structure/ritualcircle/psydon(step_turf)
		if("Rune of ZIZO")
			to_chat(user,span_cultsmall("I begin inscribing the rune of Her Knowledge..."))
			if(do_after(user, 30, src))
				playsound(src, 'sound/foley/scribble.ogg', 40, TRUE)
				new /obj/structure/ritualcircle/zizo(step_turf)
		if("Rune of Transaction")
			to_chat(user,span_cultsmall("I begin inscribing the rune of His Transactions..."))
			if(do_after(user, 30, src))
				playsound(src, 'sound/foley/scribble.ogg', 40, TRUE)
				new /obj/structure/ritualcircle/matthios(step_turf)
		if("Rune of Violence")
			to_chat(user,span_cultsmall("I begin inscribing the rune of Slaughter..."))
			if(do_after(user, 30, src))
				playsound(src, 'sound/foley/scribble.ogg', 40, TRUE)
				new /obj/structure/ritualcircle/graggar(step_turf)
		if("Rune of Desire")
			to_chat(user,span_cultsmall("I begin inscribing the rune of Desire..."))
			if(do_after(user, 30, src))
				playsound(src, 'sound/foley/scribble.ogg', 40, TRUE)
				new /obj/structure/ritualcircle/baotha(step_turf)
		if("Confinement Matrix, Weak")
			to_chat(user,span_cultsmall("I whip out my dih and start slapping it on the ground..."))
			if(do_after(user, 30, src))
				playsound(src, 'sound/foley/scribble.ogg', 40, TRUE)
				new /obj/effect/decal/cleanable/roguerune/arcyne/summoning(step_turf)
		if("Imbuement Array, Low")
			to_chat(user,span_cultsmall("I whip out my dih and start slapping it on the ground..."))
			if(do_after(user, 30, src))
				playsound(src, 'sound/foley/scribble.ogg', 40, TRUE)
				new /obj/effect/decal/cleanable/roguerune/arcyne/enchantment(step_turf)
		if("Wall Accession Matrix, Weak")
			to_chat(user,span_cultsmall("I whip out my dih and start slapping it on the ground..."))
			if(do_after(user, 30, src))
				playsound(src, 'sound/foley/scribble.ogg', 40, TRUE)
				new /obj/effect/decal/cleanable/roguerune/arcyne/wall(step_turf)
