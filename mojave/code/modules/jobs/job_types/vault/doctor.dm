/datum/job/ms13/vault/doctor
	title = "Vault Doctor"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Overseer"
	description = "Aid any patients that come in and ensure the residents of the Vault are well cared for."
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/vault/doctor

	display_order = JOB_DISPLAY_ORDER_MS13_VAULTDOCTOR

	mind_traits = list(TRAIT_MEDICAL_TRAINING, TRAIT_DRUGGIE)

/datum/outfit/job/ms13/vault/doctor
	name = "_Vault Doctor"
	jobtype = /datum/job/ms13/vault/doctor

	id = 		 /obj/item/card/id/ms13/doctor
	suit =       /obj/item/clothing/suit/toggle/labcoat/ms13
	uniform =    /obj/item/clothing/under/ms13/vaultsuit
	belt = 		 /obj/item/storage/firstaid/ms13/regular
	shoes = 	 /obj/item/clothing/shoes/ms13/military/vault
	gloves =	 /obj/item/clothing/gloves/ms13/nitrile
	r_pocket =   /obj/item/stack/ms13/currency/prewar/hunnedeighty
	back =       /obj/item/storage/ms13/satchel

/datum/outfit/job/ms13/vault/doctor/pre_equip(mob/living/carbon/human/H)