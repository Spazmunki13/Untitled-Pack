import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;

	val flint = <minecraft:flint>;
	val sharp_flint = <contenttweaker:sharp_flint>;
	val blunt_flint = <contenttweaker:blunt_flint>;
	val grass_clippings = <contenttweaker:grass_clippings>;
	val grass_binding = <contenttweaker:grass_binding>;
	val stickWood = <ore:stickWood>;

// Make grass binding out of grass clippings

	recipes.addShapeless("grass_binding", grass_binding, [grass_clippings, grass_clippings, grass_clippings]);
	
// Make blunt and sharp flint from flint

	recipes.addShapeless("sharp_flint", sharp_flint, [flint.transformReplace(blunt_flint), flint]);

/*// Add attack damage and attack speed to flint tools

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
	});*/
	
// Recipes

	recipes.addShapedMirrored("flint_knife", <dungeontactics:stone_knife>, [
		[sharp_flint], 
		[grass_binding], 
		[stickWood]
	]);
	recipes.addShapedMirrored("flint_pickaxe", <minecraft:stone_pickaxe>, [
		[sharp_flint, grass_binding, sharp_flint], 
		[null, stickWood, null]
	]);
	recipes.addShapedMirrored("flint_shovel", <minecraft:stone_shovel>, [
		[blunt_flint, grass_binding], 
		[null, stickWood]
	]);
	recipes.addShapedMirrored("flint_axe", <minecraft:stone_axe>, [
		[flint, grass_binding], 
		[null, stickWood]
	]);
	recipes.addShapedMirrored("flint_hoe", <minecraft:stone_hoe>, [
		[sharp_flint, grass_binding], 
		[null, stickWood]
	]);
	
	// Rename Stone Tools to Flint Tools
	
		<dungeontactics:stone_knife>.displayName = "Flint Knife";
		<minecraft:stone_pickaxe>.displayName = "Flint Pickaxe";
		<minecraft:stone_shovel>.displayName = "Flint Shovel";
		<minecraft:stone_axe>.displayName = "Flint Axe";
		<minecraft:stone_hoe>.displayName = "Flint Hoe";
		
	// Remove Stone Tools which make no sense
	
		mods.jei.JEI.removeAndHide(<minecraft:stone_sword>);
		//mods.jei.JEI.removeAndHide();
	
	/*// Hide plain flint tools
	
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
		mods.jei.JEI.addItem(flint_hoe);*/