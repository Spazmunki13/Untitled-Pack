import crafttweaker.item.IItemStack;
import mods.chisel.Carving;

// Hide I&F's Sapphire Ore

	mods.jei.JEI.removeAndHide(<biomesoplenty:gem_ore:6>);
	mods.jei.JEI.removeAndHide(<biomesoplenty:gem:6>);
	
/*
// Hide I&F's Sapphire Ore

	mods.jei.JEI.removeAndHide(<iceandfire:sapphire_ore>);
	
	furnace.remove(<iceandfire:sapphire_gem>);

// Rename I&F's Sapphire Gem and Block

	<iceandfire:sapphire_gem>.displayName = "Cut Sapphire";
	<iceandfire:sapphire_block>.displayName = "Block of Cut Sapphire";

// Add Chisel Group for Sapphire Gems

	mods.chisel.Carving.addGroup("Sapphire Gem");
	mods.chisel.Carving.addVariation("Sapphire Gem", <iceandfire:sapphire_gem>);
	mods.chisel.Carving.addVariation("Sapphire Gem", <biomesoplenty:gem:6>);
*/

// Add Chisel Group for Sapphire Blocks

	mods.chisel.Carving.addGroup("Sapphire Block");
	mods.chisel.Carving.addVariation("Sapphire Block", <iceandfire:sapphire_block>);
	mods.chisel.Carving.addVariation("Sapphire Block", <biomesoplenty:gem_block:6>);
	
// Make I&F's Sapphire Block Recipe only use I&F's Sapphire Gem
	
	recipes.removeByRecipeName("iceandfire:sapphire_block");
	
	recipes.addShapeless("sapphire_block", <iceandfire:sapphire_block>, [
		<iceandfire:sapphire_gem>, <iceandfire:sapphire_gem>, <iceandfire:sapphire_gem>, 
		<iceandfire:sapphire_gem>, <iceandfire:sapphire_gem>, <iceandfire:sapphire_gem>, 
		<iceandfire:sapphire_gem>, <iceandfire:sapphire_gem>, <iceandfire:sapphire_gem>]
	);

// Make Terrestrial Artifact recipe use the Ore Dictionary
			
	recipes.removeByRecipeName("biomesoplenty:terrestrial_artifact");

	recipes.addShaped("terrestrial_artifact", <biomesoplenty:terrestrial_artifact>, [
		[<ore:gemRuby>, <ore:gemTopaz>, <ore:gemAmber>],
		[<ore:gemTanzanite>, null, <ore:gemEmerald>],
		[<ore:gemSapphire>, <ore:gemMalachite>, <ore:gemPeridot>]
	]);