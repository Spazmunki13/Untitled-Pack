#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.AxisAlignedBB;

// Branch

	var branch = VanillaFactory.createBlock("branch", <blockmaterial:wood>);
	branch.setFullBlock(false);
	branch.setLightOpacity(0);
	branch.setLightValue(0);
	branch.setBlockHardness(0.1);
	branch.setBlockResistance(0.0);
	branch.setToolClass("axe");
	branch.setToolLevel(0);
	branch.setBlockSoundType(<soundtype:wood>);
	branch.setPassable(true);
	branch.setBlockLayer("CUTOUT");

	val flatontheground = AxisAlignedBB.create(0.15625, 0, 0.15625, 0.84375, 0.125, 0.84375);

	branch.setAxisAlignedBB(flatontheground);
	branch.register();