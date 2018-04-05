import crafttweaker.item.IItemStack;

// Remove Dungeon Tactics shields to reduce redundant content

	val shieldtype = [
		<dungeontactics:wooden_shield>,
		<dungeontactics:stone_shield>,
		<dungeontactics:iron_shield>,
		<dungeontactics:golden_shield>,
		<dungeontactics:diamond_shield>,
		<dungeontactics:copper_shield>,
		<dungeontactics:lead_shield>,
		<dungeontactics:invar_shield>,
		<dungeontactics:steel_shield>,
		<dungeontactics:silver_shield>,
		<dungeontactics:electrum_shield>,
		<dungeontactics:tin_shield>,
		<dungeontactics:bronze_shield>,
		<dungeontactics:platinum_shield>,
		<dungeontactics:tungsten_shield>,
		<dungeontactics:titanium_shield>,
		<dungeontactics:osmium_shield>,
		<dungeontactics:crystal_shield>,
		<dungeontactics:soulsteel_shield>,

	// Just add more durability to iron shields?
		<dungeontactics:gilded_shield>,
		<dungeontactics:jewelled_shield>,
		
	// Use gems to make shields
		<dungeontactics:emerald_shield>,
		<dungeontactics:ruby_shield>,
		<dungeontactics:sapphire_shield>,
		<dungeontactics:peridot_shield>,
		<dungeontactics:amethyst_shield>,
		<dungeontactics:topaz_shield>
	] as IItemStack[];
	
	for shield in shieldtype {
		mods.jei.JEI.removeAndHide(shield);
	}

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