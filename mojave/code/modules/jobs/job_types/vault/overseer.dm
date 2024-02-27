/datum/job/ms13/vault/overseer
	title = "Vault Overseer"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The best interests of the Vault and it's citizens."
	description = "At long last you are the Overseer of the Vault! Make the decisions and organize the vault the way you see fit to allow it to prosper!"
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/vault/overseer

	display_order = JOB_DISPLAY_ORDER_MS13_OVERSEER

/datum/outfit/job/ms13/vault/overseer
	name = "_Vault Overseer"
	jobtype = /datum/job/ms13/vault/overseer

	id = 		 /obj/item/card/id/ms13/overseer
	uniform =    /obj/item/clothing/under/ms13/vaultsuit
	shoes = 	 /obj/item/clothing/shoes/ms13/military/vault
	belt = 		 /obj/item/ammo_box/ms13/a357box
	r_hand =	 /obj/item/radio/ms13/broadcast/advanced
	r_pocket =   /obj/item/gun/ballistic/revolver/ms13/derringer/trimmed
	l_pocket =   /obj/item/stack/ms13/currency/prewar/mayor
	back =       null

/datum/outfit/job/ms13/vault/overseer/pre_equip(mob/living/carbon/human/H)
	..()