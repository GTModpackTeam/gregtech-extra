#packmode normal



########################################
# Items
########################################
# Fireworks Rocket
recipes.addShapeless(<minecraft:fireworks>.withTag({Fireworks: {Flight: 1}}) * 3, [
    <minecraft:paper>, <minecraft:gunpowder>
]);
recipes.addShapeless(<minecraft:fireworks>.withTag({Fireworks: {Flight: 2}}) * 3, [
    <minecraft:paper>, <minecraft:gunpowder>, <minecraft:gunpowder>
]);
recipes.addShapeless(<minecraft:fireworks>.withTag({Fireworks: {Flight: 3}}) * 3, [
    <minecraft:paper>, <minecraft:gunpowder>,
    <minecraft:gunpowder>, <minecraft:gunpowder>
]);

# Lead
recipes.remove(<minecraft:lead>);
recipes.addShaped(<minecraft:lead>, [
    [<minecraft:string>, <minecraft:string>, <minecraft:string>],
    [<minecraft:string>, <minecraft:slime_ball> | <metaitem:rubber_drop>, <minecraft:string>],
    [<minecraft:string>, <minecraft:string>, <minecraft:string>]
]);
assembler.findRecipe(2, [<minecraft:string:0> * 4, <minecraft:slime_ball>], null).remove();
assembler.recipeBuilder()
    .inputs([
        <minecraft:string> * 4,
        <minecraft:slime_ball> | <metaitem:rubber_drop>
    ])
    .outputs([<minecraft:lead> * 2])
    .duration(200)
    .EUt(2)
    .buildAndRegister();

# Iron Nugget
recipes.addShapeless(<minecraft:iron_nugget> * 9, [<minecraft:iron_ingot>]);

# Gold Nugget
recipes.addShapeless(<minecraft:gold_nugget> * 9, [<minecraft:gold_ingot>]);

# Fermented Spider Eye
recipes.remove(<minecraft:fermented_spider_eye>);



########################################
# Blocks
########################################
# Granite
recipes.remove(<minecraft:stone:1>);

# Diorite
recipes.remove(<minecraft:stone:3>);

# Andesite
recipes.remove(<minecraft:stone:5>);

# Comparator
recipes.removeByRecipeName("appliedenergistics2:misc/vanilla_comparator");

# Brewing Stand
recipes.remove(<minecraft:brewing_stand>);
recipes.addShaped(<minecraft:brewing_stand>, [
    [<metaitem:ringSteel>, <minecraft:blaze_rod>, <metaitem:ringSteel>],
    [<metaitem:stickSteel>, <minecraft:blaze_rod>, <metaitem:stickSteel>],
    [<metaitem:screwSteel>, <minecraft:cauldron>, <metaitem:screwSteel>]
]);

# Nether Quartz Block
recipes.remove(<minecraft:quartz_block>);
compressor.recipeBuilder()
    .inputs([<ore:crystalPureNetherQuartz> * 8])
    .outputs([<minecraft:quartz_block>])
    .duration(300)
    .EUt(2)
    .buildAndRegister();

# Chest
assembler.findRecipe(4, [
    <metaitem:plateWood> * 8, <metaitem:circuit.integrated>.withTag({Configuration: 8})
], null).remove();
assembler.recipeBuilder()
    .circuit(8)
    .inputs([<ore:plankWood> * 8])
    .outputs([<minecraft:chest>])
    .duration(200)
    .EUt(4)
    .buildAndRegister();

# Ender Chest
recipes.remove(<minecraft:ender_chest>);

# End Rod
recipes.remove(<minecraft:end_rod>);

# Daylight Sensor
recipes.removeByRecipeName("appliedenergistics2:misc/vanilla_daylight_detector");

# Beacon
assembler.recipeBuilder()
    .inputs([
        <minecraft:obsidian> * 3,
        <minecraft:nether_star>
    ])
    .fluidInputs([<liquid:glass> * 720])
    .outputs([<minecraft:beacon>])
    .duration(100)
    .EUt(16)
    .buildAndRegister();
