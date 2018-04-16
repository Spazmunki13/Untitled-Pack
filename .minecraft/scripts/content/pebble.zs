#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.AxisAlignedBB;

// pebble

	var pebble = VanillaFactory.createBlock("pebble", <blockmaterial:rock>);
	pebble.setFullBlock(false);
	pebble.setLightOpacity(0);
	pebble.setLightValue(0);
	pebble.setBlockHardness(0.2);
	pebble.setBlockResistance(0.0);
	pebble.setToolClass("pickaxe");
	pebble.setToolLevel(0);
	pebble.setBlockSoundType(<soundtype:stone>);
	pebble.setPassable(true);
	pebble.setBlockLayer("CUTOUT");

	val flatontheground = AxisAlignedBB.create(0.125, 0, 0.125, 0.875, 0.0625, 0.875);

	pebble.setAxisAlignedBB(flatontheground);
	pebble.register();