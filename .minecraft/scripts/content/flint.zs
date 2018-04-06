#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
	
// Add sharp and blunt flint
	
	var sharp_flint = VanillaFactory.createItem("sharp_flint");
	sharp_flint.register();
	
	var blunt_flint = VanillaFactory.createItem("blunt_flint");
	blunt_flint.register();