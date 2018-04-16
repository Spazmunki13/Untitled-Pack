import crafttweaker.item.IItemStack;

// Remove Spartan Shields' uncraftable shields
	
	val uncraftableshield = [
		<spartanshields:shield_basic_bronze>,
		<spartanshields:shield_basic_tin>,
		<spartanshields:shield_basic_enderium>,
		<spartanshields:shield_basic_platinum>,
		<spartanshields:shield_basic_signalum>,
		<spartanshields:shield_basic_lumium>,
		<spartanshields:shield_botania_manasteel>,
		<spartanshields:shield_botania_terrasteel>,
		<spartanshields:shield_botania_elementium>,
		<spartanshields:shield_abyssalcraft_darkstone>,
		<spartanshields:shield_abyssalcraft_abyssalnite>,
		<spartanshields:shield_abyssalcraft_coralium>,
		<spartanshields:shield_abyssalcraft_dreadium>,
		<spartanshields:shield_abyssalcraft_ethaxium>,
		<spartanshields:shield_basic_soulforged_steel>,
		<spartanshields:shield_riot_rftools>,
		<spartanshields:shield_flux_ra>
	] as IItemStack[];
	
	for shield in uncraftableshield {
		mods.jei.JEI.hide(shield);
	}