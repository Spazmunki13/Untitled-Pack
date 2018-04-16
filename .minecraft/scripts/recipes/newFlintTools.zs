import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;

	val flint = <minecraft:flint>;
	val sharp_flint = <contenttweaker:sharp_flint>;
	val blunt_flint = <contenttweaker:blunt_flint>;
	val grass_clippings = <contenttweaker:grass_clippings>;
	val grass_binding = <contenttweaker:grass_binding>;
	val stickWood = <ore:stickWood>;
	val knife_guard = <contenttweaker:knife_guard>;

// Make grass binding out of grass clippings

	recipes.addShapeless("grass_binding", grass_binding, [grass_clippings, grass_clippings, grass_clippings]);
	
// Make blunt and sharp flint from flint

	recipes.addShapeless("sharp_flint", sharp_flint, [flint.transformReplace(blunt_flint), flint]);

/*
// Add attack damage and attack speed to flint tools

	var flint_knife as IItemStack = <contenttweaker:flint_knife>.withTag({
		AttributeModifiers:[
			{Slot:"mainhand",AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:2,Operation:0,UUIDLeast:1,UUIDMost:1}, 
			{Slot:"mainhand",AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-1,Operation:0,UUIDLeast:1,UUIDMost:2}
		],
		HideFlags:2
	});
	var flint_pickaxe as IItemStack = <contenttweaker:flint_pickaxe>.withTag({
		AttributeModifiers:[
			{Slot:"mainhand",AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:2,Operation:0,UUIDLeast:1,UUIDMost:1}, 
			{Slot:"mainhand",AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.8,Operation:0,UUIDLeast:1,UUIDMost:2}
		],
		HideFlags:2
	});
	var flint_shovel as IItemStack = <contenttweaker:flint_shovel>.withTag({
		AttributeModifiers:[
			{Slot:"mainhand",AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:2,Operation:0,UUIDLeast:1,UUIDMost:1}, 
			{Slot:"mainhand",AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-0.5,Operation:0,UUIDLeast:1,UUIDMost:2}
		],
		HideFlags:2
	});
	var flint_axe as IItemStack = <contenttweaker:flint_axe>.withTag({
		AttributeModifiers:[
			{Slot:"mainhand",AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:7,Operation:0,UUIDLeast:1,UUIDMost:1}, 
			{Slot:"mainhand",AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.2,Operation:0,UUIDLeast:1,UUIDMost:2}
		],
		HideFlags:2
	});
	var flint_hoe as IItemStack = <contenttweaker:flint_hoe>.withTag({
		AttributeModifiers:[
			//{Slot:"mainhand",AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:1,UUIDMost:1}, 
			{Slot:"mainhand",AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.5,Operation:0,UUIDLeast:1,UUIDMost:2}
		],
		HideFlags:2
	});
	*/
	
// Recipes

	// Remove Original Recipes
	
		recipes.remove(<minecraft:stone_pickaxe>);
		recipes.remove(<minecraft:stone_shovel>);
		recipes.remove(<minecraft:stone_axe>);
		recipes.remove(<minecraft:stone_hoe>);
		recipes.remove(<earthworks:tool_stone_hammer>);
	
	// Add New Recipes

	/*	recipes.addShapedMirrored("knife_guard", <contenttweaker:knife_guard>, [
			[null, <ore:slabWood>], 
			[stickWood, null]
		]);

		recipes.addShapedMirrored("flint_knife", <dungeontactics:stone_knife>, [
			[grass_binding, sharp_flint], 
			[knife_guard, null]
		]);
*/		recipes.addShapedMirrored("flint_pickaxe", <minecraft:stone_pickaxe>, [
			[sharp_flint, grass_binding], 
			[stickWood, sharp_flint]
		]);
		recipes.addShapedMirrored("flint_shovel", <minecraft:stone_shovel>, [
			[grass_binding, blunt_flint], 
			[stickWood, null]
		]);
		recipes.addShapedMirrored("flint_axe", <minecraft:stone_axe>, [
			[grass_binding, flint], 
			[stickWood, null]
		]);
		recipes.addShapedMirrored("flint_hoe", <minecraft:stone_hoe>, [
			[grass_binding, sharp_flint], 
			[stickWood, null]
		]);
		recipes.addShapedMirrored("tool_flint_hammer", <earthworks:tool_stone_hammer>, [
			[blunt_flint, grass_binding], 
			[stickWood, blunt_flint]
		]);
// Rename Stone Tools to Flint Tools

	<minecraft:stone_pickaxe>.displayName = "Flint Pickaxe";
	<minecraft:stone_shovel>.displayName = "Flint Shovel";
	<minecraft:stone_axe>.displayName = "Flint Axe";
	<minecraft:stone_hoe>.displayName = "Flint Hoe";
	<earthworks:tool_stone_hammer>.displayName = "Flint Hammer";
	
// Remove Stone Tools which make no sense

	mods.jei.JEI.removeAndHide(<minecraft:stone_sword>);

/*
// Hide plain flint tools

	mods.jei.JEI.hide(<contenttweaker:flint_knife>);
	mods.jei.JEI.hide(<contenttweaker:flint_pickaxe>);
	mods.jei.JEI.hide(<contenttweaker:flint_shovel>);
	mods.jei.JEI.hide(<contenttweaker:flint_axe>);
	mods.jei.JEI.hide(<contenttweaker:flint_hoe>);

// Add flint tools with attributes

	mods.jei.JEI.addItem(flint_knife);
	mods.jei.JEI.addItem(flint_pickaxe);
	mods.jei.JEI.addItem(flint_shovel);
	mods.jei.JEI.addItem(flint_axe);
	mods.jei.JEI.addItem(flint_hoe);
*/