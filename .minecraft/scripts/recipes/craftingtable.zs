// Change crafting table and crafting station recipes

	recipes.removeByRecipeName("minecraft:crafting_table");
	recipes.removeByRecipeName("tconstruct:tools/table/crafting_station");
	
	recipes.addShaped("crafting_station", <tconstruct:tooltables>, [[<ore:plankWood>, <ore:plankWood>], [<ore:stickWood>, <ore:stickWood>]]);
	recipes.addShapeless("crafting_table", <minecraft:crafting_table>, [<tconstruct:tooltables>]);