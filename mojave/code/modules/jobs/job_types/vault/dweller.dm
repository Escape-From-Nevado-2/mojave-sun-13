/datum/job/ms13/vault/dweller
	title = "Vault Dweller"
	total_positions = -1
	spawn_positions = -1
	supervisors = "The Overseer"
	description = "Provide vital labor for Snowcrest in the form of production, construction, engineering, maintenance. You name it!"
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/vault/dweller

	display_order = JOB_DISPLAY_ORDER_MS13_VAULTDWELLER

	mind_traits = list(TRAIT_SNOWCREST_TAILOR)

/datum/outfit/job/ms13/vault/dweller
	name = "_Vault Dweller"
	jobtype = /datum/job/ms13/vault/dweller
	uniform = /obj/item/clothing/under/ms13/vaultsuit
	id = 		 /obj/item/card/id/ms13/town/worker
	shoes = 	 /obj/item/clothing/shoes/ms13/military/vault
	r_pocket =   /obj/item/radio/ms13


/datum/outfit/job/ms13/vault/dweller/pre_equip(mob/living/carbon/human/H)