
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
	
// Recipes for flint tools

	recipes.addShapedMirrored("flint_knife", <dungeontactics:stone_knife>/*<contenttweaker:flint_knife>*/, [
		[sharp_flint], 
		[grass_binding], 
		[stickWood]
	]);
	recipes.addShapedMirrored("flint_pickaxe", <minecraft:stone_pickaxe>/*<contenttweaker:flint_pickaxe>*/, [
		[sharp_flint, grass_binding, sharp_flint], 
		[null, stickWood, null]
	]);
	recipes.addShapedMirrored("flint_shovel", <minecraft:stone_shovel>/*<contenttweaker:flint_shovel>*/, [
		[blunt_flint, grass_binding], 
		[null, stickWood]
	]);
	recipes.addShapedMirrored("flint_axe", <minecraft:stone_axe>/*<contenttweaker:flint_axe>*/, [
		[flint, grass_binding], 
		[null, stickWood]
	]);
	recipes.addShapedMirrored("flint_mattock", <minecraft:stone_hoe>/*<contenttweaker:flint_mattock>*/, [
		[sharp_flint, grass_binding], 
		[null, stickWood]
	]);