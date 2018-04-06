#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemUse;
import mods.contenttweaker.ActionResult;

// Add grass clippings and binding

	var grass_clippings = VanillaFactory.createItem("grass_clippings");
	grass_clippings.register();
	
	var grass_binding = VanillaFactory.createItem("grass_binding");
	grass_binding.register();
	
// Make grass clippings plantable
	
	grass_clippings.itemUseAction = "BLOCK";
	grass_clippings.onItemUse = function(player, world, pos, hand, facing, blockHit) {
		val amidirt = world.getBlockState(pos)/*.block as IBlock()*/;
		if (amidirt == <block:minecraft:dirt>)
		{
			world.setBlockState(<block:minecraft:grass>, pos);
			player.getHeldItem(hand).shrink(1);
			return ActionResult.success();
		}
		else {
			if (amidirt == <block:biomesoplenty:dirt:0>)
			{
				world.setBlockState(<block:biomesoplenty:grass:2>, pos);
				player.getHeldItem(hand).shrink(1);
				return ActionResult.success();
			}
			else {
				if (amidirt == <block:biomesoplenty:dirt:1>)
				{
					world.setBlockState(<block:biomesoplenty:grass:3>, pos);
					player.getHeldItem(hand).shrink(1);
					return ActionResult.success();
				}
				else {
					if (amidirt == <block:biomesoplenty:dirt:2>)
					{
						world.setBlockState(<block:biomesoplenty:grass:4>, pos);
						player.getHeldItem(hand).shrink(1);
						return ActionResult.success();
					}
				}
			}
		}

		return ActionResult.pass();
	};