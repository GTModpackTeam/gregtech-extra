########################################
# Items
########################################
# Iron Chisel
recipes.remove(<chisel:chisel_iron>);
recipes.addShaped(<chisel:chisel_iron>, [
    [<ore:craftingToolFile>, <ore:plateIron>, <ore:plateIron>],
    [null, <ore:screwSteel>, <ore:plateIron>],
    [<ore:stickBronze>, null, <ore:craftingToolHardHammer>]
]);

# Diamond Chisel
recipes.remove(<chisel:chisel_diamond>);
recipes.addShaped(<chisel:chisel_diamond>, [
    [<ore:craftingToolFile>, <ore:plateDiamond>, <ore:plateDiamond>],
    [null, <chisel:chisel_iron>, <ore:plateDiamond>],
    [<ore:stickRoseGold>, null, <ore:craftingToolHardHammer>]
]);

# iChisel
recipes.remove(<chisel:chisel_hitech>);
recipes.addShaped(<chisel:chisel_hitech>, [
    [<ore:craftingToolFile>, <ore:plateDiamond>, <ore:plateDiamond>],
    [null, <chisel:chisel_diamond>, <ore:plateDiamond>],
    [<ore:stickStainlessSteel>, null, <ore:craftingToolHardHammer>]
]);

# Quartz fix
var quartz = <ore:quartz>;
quartz.add(<minecraft:quartz>);
quartz.add(<appliedenergistics2:material:10>);
quartz.add(<appliedenergistics2:material:11>);
quartz.add(<appliedenergistics2:material:12>);
mods.chisel.Groups.removeGroup("AECertusQuartz");
mods.chisel.Groups.removeGroup(<ore:quartz>);


########################################
# Blocks
########################################
# Auto Chisel
recipes.remove(<chisel:auto_chisel>);
recipes.addShaped(<chisel:auto_chisel>, [
    [<ore:plateGlass>, <ore:plateGlass>, <ore:plateGlass>],
    [<ore:plateGlass>, <chisel:chisel_hitech>.noReturn(), <ore:plateGlass>],
    [<ore:plateIron>, <extrautils2:compressedcobblestone:1>, <ore:plateIron>]
]);

// TODO
# 鉱石辞書の削除
