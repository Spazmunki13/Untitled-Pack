import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val colors = [
	"white",
	"orange",
	"magenta",
	"light_blue",
	"yellow",
	"lime",
	"pink",
	"gray",
	"light_gray",
	"cyan",
	"purple",
	"blue",
	"brown",
	"green",
	"red",
	"black"
] as string[];

val coloredwool = [
	<ore:blockWoolWhite>,
	<ore:blockWoolOrange>,
	<ore:blockWoolMagenta>,
	<ore:blockWoolLightBlue>,
	<ore:blockWoolYellow>,
	<ore:blockWoolLime>,
	<ore:blockWoolPink>,
	<ore:blockWoolGray>,
	<ore:blockWoolLightGray>,
	<ore:blockWoolCyan>,
	<ore:blockWoolPurple>,
	<ore:blockWoolBlue>,
	<ore:blockWoolBrown>,
	<ore:blockWoolGreen>,
	<ore:blockWoolRed>,
	<ore:blockWoolBlack>
] as IOreDictEntry[];

// Create colored wool ore dictionaries

for i, color in coloredwool {
	color.add(<minecraft:wool>.definition.makeStack(i));
}

// Remove recipes

for color in colors {
	recipes.removeByRecipeName("minecraft:" + color + "_bed");
}

recipes.removeByRecipeName("animania:bed");

// Add recipes

for i, color in colors {
	recipes.addShapedMirrored(color + "_bed", <minecraft:bed>.definition.makeStack(i), [[coloredwool[i], coloredwool[i], <ore:blockWoolWhite>], [<ore:fenceWood>, <ore:slabWood>, <ore:fenceWood>]]);
}

for i in 1 to 15 {
	recipes.addShapeless("white_bed_from_" + colors[i] + "_bed", <minecraft:bed:0>, [<minecraft:bed>.definition.makeStack(i), <ore:dyeWhite>]);
}