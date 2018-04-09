import crafttweaker.entity.IEntityDefinition;

// Remove Extra Wither Skeleton Bones

	val witherSkele = <entity:minecraft:wither_skeleton>;

	witherSkele.removeDrop(<inspirations:materials:7>);
	witherSkele.removeDrop(<tconstruct:materials:17>);
	witherSkele.removeDrop(<nex:item_bone_wither>);
	//witherSkele.removeDrop(<iceandfire:witherbone>);
	witherSkele.removeDrop(<minecraftboom:wither_bone>);
	
// Add Bones to Ore Dict

	val Wbone = <ore:boneWithered>;
	
	Wbone.add(
		<nex:item_bone_wither>,
		<iceandfire:witherbone>,
		<minecraftboom:wither_bone>
	);
	
// Fix Recipes that use Any of the Above

	// NetherEx

		// Remove Old Recipes
		
			recipes.removeByRecipeName("nex:armor_boots_bone_0");
			recipes.removeByRecipeName("nex:armor_chestplate_bone_0");
			recipes.removeByRecipeName("nex:armor_helmet_bone_0");
			recipes.removeByRecipeName("nex:armor_leggings_bone_0");
			recipes.removeByRecipeName("nex:item_dust_wither_0");
			recipes.removeByRecipeName("nex:tool_axe_bone_0");
			recipes.removeByRecipeName("nex:tool_axe_bone_0_alt");
			recipes.removeByRecipeName("nex:tool_hammer_bone_0");
			recipes.removeByRecipeName("nex:tool_hoe_bone_0");
			recipes.removeByRecipeName("nex:tool_hoe_bone_0_alt");
			recipes.removeByRecipeName("nex:tool_pickaxe_bone_0");
			recipes.removeByRecipeName("nex:tool_pickaxe_bone_0_alt");
			recipes.removeByRecipeName("nex:tool_shovel_bone_0");
			recipes.removeByRecipeName("nex:tool_shovel_bone_0_alt");
			recipes.removeByRecipeName("nex:tool_sword_bone_0");
			recipes.removeByRecipeName("nex:tool_sword_bone_0_alt");
			
		// Add Recipes that use Ore Dict
			
			recipes.addShaped("armor_boots_bone_0", <nex:armor_boots_bone>, [[Wbone, null, Wbone], [Wbone, null, Wbone]]);
			recipes.addShaped("armor_chestplate_bone_0", <nex:armor_chestplate_bone>, [[Wbone, null, Wbone], [Wbone, Wbone, Wbone], [Wbone, Wbone, Wbone]]);
			recipes.addShaped("armor_helmet_bone_0", <nex:armor_helmet_bone>, [[Wbone, Wbone, Wbone], [Wbone, null, Wbone]]);
			recipes.addShaped("armor_leggings_bone_0", <nex:armor_leggings_bone>, [[Wbone, Wbone, Wbone], [Wbone, null, Wbone], [Wbone, null, Wbone]]);
			recipes.addShaped("item_dust_wither_0", <nex:item_dust_wither> * 3, [[Wbone]]);
			recipes.addShaped("tool_axe_bone_0", <nex:tool_axe_bone>, [[<minecraft:gold_ingot>, <minecraft:gold_ingot>], [<minecraft:gold_ingot>, Wbone], [null, Wbone]]);
			recipes.addShaped("tool_axe_bone_0_alt", <nex:tool_axe_bone>, [[null, <minecraft:golden_axe>, null], [null, Wbone, null], [null, Wbone, null]]);
			recipes.addShaped("tool_hammer_bone_0", <nex:tool_hammer_bone>, [[<minecraft:gold_block>, <minecraft:gold_block>, <minecraft:gold_block>], [null, Wbone, null], [null, Wbone, null]]);
			recipes.addShaped("tool_hoe_bone_0", <nex:tool_hoe_bone>, [[<minecraft:gold_ingot>, <minecraft:gold_ingot>], [null, Wbone], [null, Wbone]]);
			recipes.addShaped("tool_hoe_bone_0_alt", <nex:tool_hoe_bone>, [[null, <minecraft:golden_hoe>, null], [null, Wbone, null], [null, Wbone, null]]);
			recipes.addShaped("tool_pickaxe_bone_0", <nex:tool_pickaxe_bone>, [[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>], [null, Wbone, null], [null, Wbone, null]]);
			recipes.addShaped("tool_pickaxe_bone_0_alt", <nex:tool_pickaxe_bone>, [[null, <minecraft:golden_pickaxe>, null], [null, Wbone, null], [null, Wbone, null]]);
			recipes.addShaped("tool_shovel_bone_0", <nex:tool_shovel_bone>, [[null, <minecraft:gold_ingot>, null], [null, Wbone, null], [null, Wbone, null]]);
			recipes.addShaped("tool_shovel_bone_0_alt", <nex:tool_shovel_bone>, [[null, <minecraft:golden_shovel>, null], [null, Wbone, null], [null, Wbone, null]]);
			recipes.addShaped("tool_sword_bone_0", <nex:tool_sword_bone>, [[null, <minecraft:gold_ingot>, null], [null, <minecraft:gold_ingot>, null], [null, Wbone, null]]);
			recipes.addShaped("tool_sword_bone_0_alt", <nex:tool_sword_bone>, [[null, <minecraft:golden_sword>, null], [null, Wbone, null], [null, Wbone, null]]);
			
	// Ice and Fire
	
		// Remove Old Recipes
		
			recipes.removeByRecipeName("iceandfire:dragonbone_axe");
			recipes.removeByRecipeName("iceandfire:dragonbone_bow");
			recipes.removeByRecipeName("iceandfire:dragonbone_hoe");
			recipes.removeByRecipeName("iceandfire:dragonbone_pickaxe");
			recipes.removeByRecipeName("iceandfire:dragonbone_shovel");
			recipes.removeByRecipeName("iceandfire:dragonbone_sword");
			recipes.removeByRecipeName("iceandfire:wither_shard");
		
		// Add Recipes that use Ore Dict
			
			recipes.addShaped("dragonbone_axe", <iceandfire:dragonbone_axe>, [[<iceandfire:dragonbone>, <iceandfire:dragonbone>], [<iceandfire:dragonbone>, Wbone], [null, Wbone]]);
			recipes.addShaped("dragonbone_bow", <iceandfire:dragonbone_bow>, [[null, <iceandfire:dragonbone>, <minecraft:string>], [Wbone, null, <minecraft:string>], [null, <iceandfire:dragonbone>, <minecraft:string>]]);
			recipes.addShaped("dragonbone_hoe", <iceandfire:dragonbone_hoe>, [[<iceandfire:dragonbone>, <iceandfire:dragonbone>], [null, Wbone], [null, Wbone]]);
			recipes.addShaped("dragonbone_pickaxe", <iceandfire:dragonbone_pickaxe>, [[<iceandfire:dragonbone>, <iceandfire:dragonbone>, <iceandfire:dragonbone>], [null, Wbone, null], [null, Wbone, null]]);
			recipes.addShaped("dragonbone_shovel", <iceandfire:dragonbone_shovel>, [[<iceandfire:dragonbone>], [Wbone], [Wbone]]);
			recipes.addShaped("dragonbone_sword", <iceandfire:dragonbone_sword>, [[<iceandfire:dragonbone>], [<iceandfire:dragonbone>], [Wbone]]);
			recipes.addShapeless("wither_shard", <iceandfire:wither_shard> * 3, [Wbone]);

		
	// Minecraft Boom
	
		// Remove Old Recipes
		
			recipes.removeByRecipeName("minecraftboom:charred_bone_block");
			recipes.removeByRecipeName("minecraftboom:wither_bone");
			
		// Add Recipes that use Ore Dict
		
			recipes.addShapeless("wither_bone", <tconstruct:materials:17> * 4, [<minecraftboom:charred_bone_block>]);
			recipes.addShaped("charred_bone_block", <minecraftboom:charred_bone_block>, [[Wbone, Wbone], [Wbone, Wbone]]);
