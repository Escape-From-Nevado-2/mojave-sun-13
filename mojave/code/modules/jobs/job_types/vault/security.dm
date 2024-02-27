/datum/job/ms13/vault/security
	title = "Vault Security"
	total_positions = 4
	spawn_positions = 4
	supervisors = "The Overseer"
	description = "You're a carefully selected and trained security of the Vault! Ensure the safety of the Overseer first, and the overall Vault second. You answer solely to the Overseer and should carry out their will and orders as needed."
	forbid = ""
	enforce = ""

	outfit = /datum/outfit/job/ms13/vault/security

	display_order = JOB_DISPLAY_ORDER_MS13_VAULTSECURITY

/datum/outfit/job/ms13/vault/security
	name = "_Vault Security"
	jobtype = /datum/job/ms13/vault/security

	id =		 /obj/item/card/id/ms13/bodyguard
	uniform = /obj/item/clothing/under/ms13/vaultsuit
	head =		 /obj/item/clothing/head/helmet/ms13/vaulthelmet
	r_pocket =   /obj/item/stack/ms13/currency/prewar/ninety
	l_pocket =	 /obj/item/flashlight/ms13
	belt =		 /obj/item/gun/ballistic/revolver/ms13/rev556
	suit =		 /obj/item/clothing/suit/armor/ms13/vest/vault
	shoes = 	 /obj/item/clothing/shoes/ms13/military/vault
	gloves =	 /obj/item/clothing/gloves/ms13/military
	backpack_contents = list(
		/obj/item/stack/medical/gauze/ms13/three=1, \
		/obj/item/claymore/ms13/baton=1, \
		/obj/item/ammo_box/ms13/a556/small=1, \
		/obj/item/radio/ms13=1, \
		/obj/item/restraints/handcuffs/ms13=1)

/datum/outfit/job/ms13/vault/security/pre_equip(mob/living/carbon/human/H)
	..()

	suit_store = pick(
			/obj/item/gun/ballistic/shotgun/ms13/lever,\
			/obj/item/gun/ballistic/shotgun/ms13/lever/cowboy,\
			/obj/item/gun/energy/ms13/laser/pistol)


/datum/outfit/job/ms13/vault/security/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	var/obj/item/gun/ballistic/equipped_gun = H.get_item_by_slot(ITEM_SLOT_SUITSTORE)
	if(!istype(equipped_gun))
		return
	var/obj/item/ammo_casing/loaded_casing = equipped_gun.chambered || equipped_gun.magazine?.get_round(TRUE)
	//bullshit!
	if(!loaded_casing?.stack_type)
		return
	var/obj/item/ammo_casing/stacker_casing = new loaded_casing.type(H.loc)
	var/obj/item/ammo_box/magazine/ammo_stack/ammo_stack = stacker_casing.stack_with(new loaded_casing.type(H.loc))
	ammo_stack.top_off(loaded_casing.type, starting = TRUE)
	//this is fucking dumb but top_off has weird behavior
	if(length(ammo_stack.stored_ammo) > ammo_stack.max_ammo)
		stacker_casing = ammo_stack.get_round(keep = FALSE)
		qdel(stacker_casing)
	H.put_in_hands(ammo_stack)
	var/obj/item/backpack = H.get_item_by_slot(ITEM_SLOT_BACK)
	if(!backpack)
		return
	SEND_SIGNAL(backpack, COMSIG_TRY_STORAGE_INSERT, ammo_stack, null, TRUE, TRUE, FALSE)
