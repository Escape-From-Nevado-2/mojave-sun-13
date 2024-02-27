/datum/job/ms13/vault/nurse
	title = "Vault Nurse"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Doctor and the Mayor"
	description = "Assist the Snowcrest medical staff in whatever they may need."
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/vault/nurse

	display_order = JOB_DISPLAY_ORDER_MS13_VAULTNURSE

	mind_traits = list(TRAIT_MEDICAL_TRAINING)

/datum/outfit/job/ms13/vault/nurse
	name = "_Vault Nurse"
	jobtype = /datum/job/ms13/vault/nurse

	id =		 /obj/item/card/id/ms13/doctor/nurse
	suit =       /obj/item/clothing/suit/toggle/labcoat/ms13
	uniform =    /obj/item/clothing/under/ms13/vaultsuit
	belt = 		 /obj/item/storage/firstaid/ms13/regular
	shoes = 	 /obj/item/clothing/shoes/ms13/military/vault
	gloves =	 /obj/item/clothing/gloves/ms13/nitrile
	r_pocket =   /obj/item/stack/ms13/currency/prewar/hunnedeighty
	back =       /obj/item/storage/ms13/satchel

/datum/outfit/job/ms13/vault/nurse/pre_equip(mob/living/carbon/human/H)
	..()
