/datum/job/ms13/vault/maint
	title = "Vault Maintanence"
	total_positions = 3
	spawn_positions = 3
	supervisors = "The Overseer"
	description = "Provide vital labor for the Vault in the form of production, construction, engineering, maintenance. You name it!"
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/vault/maint

	display_order = JOB_DISPLAY_ORDER_MS13_VAULTMAINT

	mind_traits = list(TRAIT_SNOWCREST_TAILOR)

/datum/outfit/job/ms13/vault/maint
	name = "_Vault Maintanence"
	jobtype = /datum/job/ms13/vault/maint
	uniform = /obj/item/clothing/under/ms13/vaultsuit
	id = 		 /obj/item/card/id/ms13/town/worker
	head =       /obj/item/clothing/head/helmet/ms13/hardhat
	shoes = 	 /obj/item/clothing/shoes/ms13/military/vault
	r_pocket =   /obj/item/radio/ms13
	l_pocket =	 /obj/item/stack/ms13/currency/prewar/hunned
	r_hand =	 /obj/item/storage/ms13/toolbox/filled


/datum/outfit/job/ms13/vault/maint/pre_equip(mob/living/carbon/human/H)