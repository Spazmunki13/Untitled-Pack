// Remove I&F's Silver
			
	mods.jei.JEI.removeAndHide(<iceandfire:silver_ore>);
	mods.jei.JEI.removeAndHide(<iceandfire:silver_nugget>);
	mods.jei.JEI.removeAndHide(<iceandfire:silver_ingot>);
	mods.jei.JEI.removeAndHide(<iceandfire:silver_block>);
	
	furnace.remove(<iceandfire:silver_ingot>);
	
// Make Immersive Engineering's Ingot, Nugget and Block recipes use Ore Dictionary

	recipes.removeByRecipeName("immersiveengineering:metal_storage/silver_ingot_uncraft");
	recipes.removeByRecipeName("immersiveengineering:metal_storage/silver_ingot");
	recipes.removeByRecipeName("immersiveengineering:metal_storage/silver_block_uncraft");
	recipes.removeByRecipeName("immersiveengineering:metal_storage/silver_block");
	
	recipes.addShapeless("silver_ingot_uncraft", <immersiveengineering:metal:23> * 9, [<ore:ingotSilver>]);
		
		// AgriCraft adds an Ore Dictionary recipe to turn Silver Nuggets into an ingot
		// Chisel adds an Ore Dictionary recipe to turn a Silver Block into ingots
		
	recipes.addShaped("silver_block", <immersiveengineering:storage:3>, [
		[<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>], 
		[<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>], 
		[<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>]
	]);