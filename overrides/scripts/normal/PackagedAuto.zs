#packmode normal



########################################
# Items
########################################
# Package Recipe Holder
recipes.remove(<packagedauto:recipe_holder>);
recipes.addShaped(<packagedauto:recipe_holder> * 3, [
    [<appliedenergistics2:quartz_glass>, <appliedenergistics2:material:52>, <appliedenergistics2:quartz_glass>],
    [<appliedenergistics2:material:52>, <ore:glowstone>, <appliedenergistics2:material:52>],
    [<ore:plateTitanium>, <packagedauto:me_package_component>, <ore:plateTitanium>]
]);

# Package Component
recipes.remove(<packagedauto:package_component>);
recipes.addShaped(<packagedauto:package_component>, [
    [<ore:plateVibrantAlloy>, <ore:plateTitanium>, <ore:plateVibrantAlloy>],
    [<ore:plateTitanium>, <minecraft:ender_eye>, <ore:plateTitanium>],
    [<ore:plateVibrantAlloy>, <ore:plateTitanium>, <ore:plateVibrantAlloy>]
]);
assembler.recipeBuilder()
    .circuit(1)
    .inputs([
        <ore:plateVibrantAlloy> * 2,
        <ore:plateTitanium> * 2,
        <minecraft:ender_eye>
    ])
    .outputs([<packagedauto:package_component>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# ME Packaging Component
recipes.remove(<packagedauto:me_package_component>);
recipes.addShaped(<packagedauto:me_package_component>, [
    [<ore:plateTitanium>, <appliedenergistics2:quartz_glass>, <ore:plateTitanium>],
    [<appliedenergistics2:material:44>, <packagedauto:package_component>, <appliedenergistics2:material:43>],
    [<ore:plateTitanium>, <appliedenergistics2:quartz_glass>, <ore:plateTitanium>]
]);



########################################
# Blocks
########################################
# Packager
recipes.remove(<packagedauto:packager>);
recipes.addShapeless(<packagedauto:packager>, [<packagedauto:unpackager>]);
recipes.addShaped(<packagedauto:packager>, [
    [<ore:plateTitanium>, <packagedauto:me_package_component>, <ore:plateTitanium>],
    [<ore:circuitAdvanced>, <metaitem:workbench>, <ore:circuitAdvanced>],
    [<ore:plateTitanium>, <ore:ae2.interface.item>, <ore:plateTitanium>]
]);

# Unpackager
recipes.remove(<packagedauto:unpackager>);
recipes.addShapeless(<packagedauto:unpackager>, [<packagedauto:packager>]);

# Encoder
recipes.remove(<packagedauto:encoder>);
recipes.addShaped(<packagedauto:encoder>, [
    [<ore:plateTitanium>, <packagedauto:me_package_component>, <ore:plateTitanium>],
    [<packagedauto:recipe_holder>, <metaitem:workbench>, <packagedauto:recipe_holder>],
    [<ore:plateTitanium>, <ore:circuitAdvanced>, <ore:plateTitanium>]
]);

# Packager Extension
recipes.remove(<packagedauto:packager_extension>);
recipes.addShaped(<packagedauto:packager_extension>, [
    [<ore:plateTitanium>, <packagedauto:me_package_component>, <ore:plateTitanium>],
    [<ore:circuitExtreme>, <metaitem:workbench>, <ore:circuitExtreme>],
    [<ore:plateTitanium>, <ore:ae2.interface.item>, <ore:plateTitanium>]
]);

# Packager Crafter
recipes.remove(<packagedauto:crafter>);
recipes.addShaped(<packagedauto:crafter>, [
    [<ore:plateTitanium>, <packagedauto:me_package_component>, <ore:plateTitanium>],
    [<ore:circuitExtreme>, <metaitem:workbench>, <ore:circuitExtreme>],
    [<ore:plateTitanium>, <metaitem:conveyor.module.ev>, <ore:plateTitanium>]
]);