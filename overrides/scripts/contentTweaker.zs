#loader contenttweaker
# Imports
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;



# ModPack - Creative ME Component
var creativeComponent = VanillaFactory.createItem("creativeComponent");
creativeComponent.creativeTab = <creativetab:appliedenergistics2>;
creativeComponent.register();

# ModPack - Matrix Core
var matrixCore = VanillaFactory.createItem("matrixCore");
matrixCore.creativeTab = <creativetab:appliedenergistics2>;
matrixCore.register();
