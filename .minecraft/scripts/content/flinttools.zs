#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemDestroyedBlock;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.Commands;
	
	// Flint Knife

		var flint_knife = VanillaFactory.createItem("flint_knife");
		flint_knife.maxStackSize = 1;
		flint_knife.maxDamage = 95;
		flint_knife.register();
		
	// Flint Pickaxe
		
		var flint_pickaxe = VanillaFactory.createItem("flint_pickaxe");
		flint_pickaxe.maxStackSize = 1;
		flint_pickaxe.toolClass = "pickaxe";
		flint_pickaxe.toolLevel = 0;
		flint_pickaxe.maxDamage = 95;
		flint_pickaxe.itemDestroyedBlock = function(stack, world, blockState, pos, entity) {
			stack.damage(1, entity);
			return true;
		};
		flint_pickaxe.register();
	
	// Flint Shovel
	
		var flint_shovel = VanillaFactory.createItem("flint_shovel");
		flint_shovel.maxStackSize = 1;
		flint_shovel.toolClass = "shovel";
		flint_shovel.toolLevel = 0;
		flint_shovel.maxDamage = 95;
		flint_shovel.itemDestroyedBlock = function(stack, world, blockState, pos, entity) {
			stack.damage(1, entity);
			return true;
		};
		flint_shovel.onItemUse = function(player, world, pos, hand, facing, blockHit) {
			var amidirt = world.getBlockState(pos)/*.block as IBlock()*/;
			if (amidirt == <block:minecraft:grass>)
			{
				world.setBlockState(<block:minecraft:grass_path>, pos);
				Commands.call("playsound minecraft:item.shovel.flatten player @p", player, world, false, true);
				player.getHeldItem(hand).damage(1, player);
				return ActionResult.success();
			}
			else {
				if (amidirt == <block:biomesoplenty:grass:2>)
				{
					world.setBlockState(<block:biomesoplenty:grass_path:0>, pos);
					Commands.call("playsound minecraft:item.shovel.flatten player @p", player, world, false, true);
					player.getHeldItem(hand).damage(1, player);
					return ActionResult.success();
				}
				else {
					if (amidirt == <block:biomesoplenty:grass:3>)
					{
						world.setBlockState(<block:biomesoplenty:grass_path:1>, pos);
						Commands.call("playsound minecraft:item.shovel.flatten player @p", player, world, false, true);
						player.getHeldItem(hand).damage(1, player);
						return ActionResult.success();
					}
					else {
						if (amidirt == <block:biomesoplenty:grass:4>)
						{
							world.setBlockState(<block:biomesoplenty:grass_path:2>, pos);
							Commands.call("playsound minecraft:item.shovel.flatten player @p", player, world, false, true);
							player.getHeldItem(hand).damage(1, player);
							return ActionResult.success();
						}
					}
				}
			}

			return ActionResult.pass();
		};
		flint_shovel.register();
	
	// Flint Axe
	
		var flint_axe = VanillaFactory.createItem("flint_axe");
		flint_axe.maxStackSize = 1;
		flint_axe.toolClass = "axe";
		flint_axe.toolLevel = 0;
		flint_axe.maxDamage = 95;
		flint_axe.itemDestroyedBlock = function(stack, world, blockState, pos, entity) {
			stack.damage(1, entity);
			return true;
		};
		flint_axe.register();
		
	// Flint Hoe
	
		var flint_hoe = VanillaFactory.createItem("flint_hoe");
		flint_hoe.maxStackSize = 1;
		flint_hoe.toolClass = "hoe";
		flint_hoe.toolLevel = 0;
		flint_hoe.maxDamage = 95;
		flint_hoe.onItemUse = function(player, world, pos, hand, facing, blockHit) {
			var amidirt = world.getBlockState(pos)/*.block as IBlock()*/;
			if (amidirt == <block:minecraft:dirt> | amidirt == <block:minecraft:grass>)
			{
				world.setBlockState(<block:minecraft:farmland:0>, pos);
				Commands.call("playsound minecraft:item.hoe.till player @p", player, world, false, true);
				player.getHeldItem(hand).damage(1, player);
				return ActionResult.success();
			}
			else {
				if (amidirt == <block:biomesoplenty:dirt:0> | amidirt == <block:biomesoplenty:grass:2>)
				{
					world.setBlockState(<block:biomesoplenty:farmland_0:0>, pos);
					Commands.call("playsound minecraft:item.hoe.till player @p", player, world, false, true);
					player.getHeldItem(hand).damage(1, player);
					return ActionResult.success();
				}
				else {
					if (amidirt == <block:biomesoplenty:dirt:1> | amidirt == <block:biomesoplenty:grass:3>)
					{
						world.setBlockState(<block:biomesoplenty:farmland_0:1>, pos);
						Commands.call("playsound minecraft:item.hoe.till player @p", player, world, false, true);
						player.getHeldItem(hand).damage(1, player);
						return ActionResult.success();
					}
					else {
						if (amidirt == <block:biomesoplenty:dirt:2> | amidirt == <block:biomesoplenty:grass:4>)
						{
							world.setBlockState(<block:biomesoplenty:farmland_1:0>, pos);
							Commands.call("playsound minecraft:item.hoe.till player @p", player, world, false, true);
							player.getHeldItem(hand).damage(1, player);
							return ActionResult.success();
						}
					}
				}
			}

			return ActionResult.pass();
		};
		flint_hoe.register();