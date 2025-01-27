# Imports
import mods.jei.JEI;



########################################
# Items
########################################
# Simple Machine Parts
JEI.hide(<enderio:item_material:69>);

# Machine Parts
JEI.hide(<enderio:item_material:2>);

# Enhanced Machine Parts
JEI.hide(<enderio:item_material:68>);

# Simple Machine Chassis
recipes.addShaped(<enderio:item_material>, [
    [<ore:barsIron>, <metaitem:plateIron>, <ore:barsIron>],
    [<metaitem:plateIron>, <enderio:item_material:20>, <metaitem:plateIron>],
    [<ore:barsIron>, <metaitem:plateIron>, <ore:barsIron>]
]);

# Industrial Machine Chassis
alloy_smelter.recipeBuilder()
    .inputs([
        <ore:itemSimpleMachineChassi>,
        <ore:dyeMachine>
    ])
    .outputs([<enderio:item_material:1>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Soul Machine Chassis
alloy_smelter.recipeBuilder()
    .inputs([
        <ore:itemSimpleMachineChassi>,
        <ore:dyeSoulMachine>
    ])
    .outputs([<enderio:item_material:53>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Enhanced Machine Chassis
alloy_smelter.recipeBuilder()
    .inputs([
        <ore:itemEndSteelMachineChassi>,
        <ore:dyeEnhancedMachine>
    ])
    .outputs([<enderio:item_material:54>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Soulleses Machine Chassis
assembler.recipeBuilder()
    .inputs([
        <enderio:block_industrial_insulation> * 6,
        <ore:skullGuardianDiode> * 2,
        <ore:itemSoulMachineChassi>
    ])
    .outputs([<enderio:item_material:55>])
    .duration(50)
    .EUt(480)
    .buildAndRegister();

# End Steel Chassis
assembler.recipeBuilder()
    .inputs([
        <enderio:block_end_iron_bars> * 4,
        <metaitem:plateEndSteel> * 4,
        <ore:skullEnderResonator>,
    ])
    .outputs([<enderio:item_material:66>])
    .duration(50)
    .EUt(480)
    .buildAndRegister();

# Photovoltaic Plate
JEI.hide(<enderio:item_material:3>);

# Conduit Binder
electric_blast_furnace.recipeBuilder()
    .inputs([
        <metaitem:dustClay> * 3,
        <metaitem:dustAndesite>,
        <metaitem:dustDiorite>
    ])
    .property("temperature", 1700)
    .outputs([<enderio:item_material:4>])
    .duration(20)
    .EUt(480)
    .buildAndRegister();

# Silicon
JEI.hide(<enderio:item_material:5>);
// <ore:itemSilicon>.remove(<enderio:item_material:5>);

# Glider Wing
recipes.addShaped(<enderio:item_material:6>, [
    [null, null, <metaitem:stickDarkSteel>],
    [null, <metaitem:stickDarkSteel>, <minecraft:leather>],
    [<metaitem:stickDarkSteel>, <minecraft:leather>, <minecraft:leather>]
]);

# Glider Wings
recipes.addShaped(<enderio:item_material:7>, [
    [<metaitem:screwDarkSteel>, <metaitem:stickDarkSteel>, <metaitem:screwDarkSteel>],
    [<metaitem:ringDarkSteel>, <metaitem:stickLongDarkSteel>, <metaitem:ringDarkSteel>],
    [<enderio:item_material:6>, <metaitem:stickLongDarkSteel>, <enderio:item_material:6>]
]);

# Nutritious Stick
JEI.hide(<enderio:item_material:8>);

# Wooden Gear
JEI.hide(<enderio:item_material:9>);
<ore:gearWood>.remove(<enderio:item_material:9>);

# Stone Gear
JEI.hide(<enderio:item_material:10>);
<ore:gearStone>.remove(<enderio:item_material:10>);

# Infity Bimetal Gear
JEI.hide(<enderio:item_material:11>);

# Energized Bimetal Gear
JEI.hide(<enderio:item_material:12>);

# Vibrant Bimetal Gear
JEI.hide(<enderio:item_material:13>);

# Dark Bimetal Gear
JEI.hide(<enderio:item_material:73>);

# Flour
JEI.hide(<enderio:item_material:21>);
<ore:dustWheat>.remove(<enderio:item_material:21>);

# Conduit Binder Composite
JEI.hide(<enderio:item_material:22>);

# Coal Powder
JEI.hide(<enderio:item_material:23>);
<ore:dustCoal>.remove(<enderio:item_material:23>);

# Iron Powder
JEI.hide(<enderio:item_material:24>);
<ore:dustIron>.remove(<enderio:item_material:24>);

# Gold Powder
JEI.hide(<enderio:item_material:25>);
<ore:dustGold>.remove(<enderio:item_material:25>);

# Copper Powder
JEI.hide(<enderio:item_material:26>);
<ore:dustCopper>.remove(<enderio:item_material:26>);

# Tin Powder
JEI.hide(<enderio:item_material:27>);
<ore:dustTin>.remove(<enderio:item_material:27>);

# Ender Pearl Powder
JEI.hide(<enderio:item_material:28>);
// <metaitem:nuggetEnderpearl>.remove(<enderio:item_material:28>);

# Obsidian Powder
JEI.hide(<enderio:item_material:29>);
<ore:dustObsidian>.remove(<enderio:item_material:29>);

# Cobalt Powder
JEI.hide(<enderio:item_material:31>);
<ore:dustCobalt>.remove(<enderio:item_material:31>);

# Lapis Powder
JEI.hide(<enderio:item_material:32>);
<ore:dustLapis>.remove(<enderio:item_material:32>);

# Quartz Powder
JEI.hide(<enderio:item_material:33>);
<ore:dustNetherQuartz>.remove(<enderio:item_material:33>);

# Confusing Powder
JEI.hide(<enderio:item_material:61>);

# Soul Powder
JEI.hide(<enderio:item_material:74>);

# Glowstone Dust
JEI.hide(<enderio:item_material:76>);

# Grains of Prescience
macerator.recipeBuilder()
    .inputs([<ore:itemPrecientCrystal>])
    .outputs([<enderio:item_material:34>])
    .duration(20)
    .EUt(2)
    .buildAndRegister();
mixer.recipeBuilder()
    .circuit(2)
    .inputs([
        <ore:itemVibrantPowder>,
        <metaitem:dustPlatinum>
    ])
    .outputs([<enderio:item_material:34> * 2])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Grains of Vibrant
macerator.recipeBuilder()
    .inputs([<ore:itemVibrantCrystal>])
    .outputs([<enderio:item_material:35>])
    .duration(20)
    .EUt(2)
    .buildAndRegister();
mixer.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:dustVibrantAlloy>,
        <metaitem:dustEmerald>
    ])
    .outputs([<enderio:item_material:35> * 2])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Grains of Piezallity
macerator.recipeBuilder()
    .inputs([<ore:itemPulsatingCrystal>])
    .outputs([<enderio:item_material:36>])
    .duration(20)
    .EUt(2)
    .buildAndRegister();
mixer.recipeBuilder()
    .circuit(2)
    .inputs([
        <metaitem:dustPulsatingIron>,
        <metaitem:dustDiamond>
    ])
    .outputs([<enderio:item_material:36> * 2])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Grains of the End
macerator.recipeBuilder()
    .inputs([<ore:itemEnderCrystal>])
    .outputs([<enderio:item_material:37>])
    .duration(20)
    .EUt(2)
    .buildAndRegister();
mixer.recipeBuilder()
    .circuit(2)
    .inputs([
        <ore:itemVibrantPowder>,
        <metaitem:dustEndSteel>
    ])
    .fluidInputs([<liquid:xpjuice> * 8000])
    .outputs([<enderio:item_material:37> * 2])
    .duration(600)
    .EUt(480)
    .buildAndRegister();

# Photovoltaic Composite
recipes.addShaped(<enderio:item_material:38>, [
    [<metaitem:dustLapis>, <metaitem:dustCoal>, null],
    [<metaitem:dustSilicon>, null, null],
    [null, null, null]
]);

# Clippings and Trimmings
macerator.recipeBuilder()
    .inputs([<ore:grass>])
    .outputs([<enderio:item_material:46>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Twings and Prunings
macerator.recipeBuilder()
    .inputs([<minecraft:deadbush>])
    .outputs([<enderio:item_material:47>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Organic Green Dye
alloy_smelter.recipeBuilder()
    .inputs([
        <enderio:item_material:46> * 6,
        <minecraft:egg>
    ])
    .outputs([<enderio:item_material:48>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Organic Brown Dye
alloy_smelter.recipeBuilder()
    .inputs([
        <enderio:item_material:47> * 6,
        <minecraft:egg>
    ])
    .outputs([<enderio:item_material:49>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Organic Black Dye
alloy_smelter.recipeBuilder()
    .inputs([
        <metaitem:dustCoal> * 3,
        <minecraft:egg>
    ])
    .outputs([<enderio:item_material:50>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Induatrial Dye Blend
mixer.recipeBuilder()
    .inputs([
        <metaitem:dustNetherQuartz> * 4,
        <metaitem:dustLapis> * 2,
        <ore:dyeGreen> * 2,
        <ore:dyeBlack>
    ])
    .outputs([<enderio:item_material:51> * 9])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Soul Attuned Dye Blend
mixer.recipeBuilder()
    .inputs([
        <metaitem:dustNetherQuartz> * 4,
        <metaitem:dustSoularium> * 2,
        <ore:dyeBrown> * 2,
        <ore:dyeBlack>
    ])
    .outputs([<enderio:item_material:52> * 9])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Enhanced Dye Blend
mixer.recipeBuilder()
    .inputs([
        <ore:itemPulsatingPowder> * 4,
        <metaitem:dustNetherQuartz> * 4,
        <ore:dyeBlack>
    ])
    .outputs([<enderio:item_material:67> * 9])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Wireless Energy Transmitter
recipes.addShaped(<enderio:item_material:65>, [
    [<minecraft:dye:15>, <metaitem:plateElectricalSteel>, null],
    [null, <minecraft:dye:15>, <metaitem:plateElectricalSteel>],
    [<minecraft:dye:15>, <metaitem:plateElectricalSteel>, null]
]);

# Ender Fragment
JEI.hide(<enderio:item_material:62>);

# Withering Dust
JEI.hide(<enderio:item_material:63>);

# Remote Awareness Upgrade
JEI.hide(<enderio:item_material:64>);

# Cake Base
JEI.hide(<enderio:item_material:70>);

# Netherotta
JEI.hide(<enderio:item_material:72>);

# Infinity Rod
JEI.hide(<enderio:item_material:71>);

# Infinity Reagent
JEI.hide(<enderio:item_material:75>);

# Animal Token
JEI.hide(<enderio:item_material:78>);

# Monster Token
JEI.hide(<enderio:item_material:79>);

# Player Token
JEI.hide(<enderio:item_material:80>);

# Unfired Death Urn
recipes.addShaped(<enderio:item_material:81>, [
    [<ore:itemClay>, <ore:itemPulsatingPowder>, <ore:itemClay>],
    [<ore:itemClay>, null, <ore:itemClay>],
    [<ore:itemClay>, <ore:itemClay>, <ore:itemClay>]
]);

# Death Urn
alloy_smelter.recipeBuilder()
    .inputs([
        <minecraft:dye:15> * 7,
        <enderio:item_material:81>
    ])
    .outputs([<enderio:block_death_pouch>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Infinity Dust
macerator.recipeBuilder()
    .inputs([<enderio:item_material:20>])
    .outputs([<enderio:block_infinity_fog>])
    .duration(500)
    .EUt(480)
    .buildAndRegister();

# Grains of Infinity
macerator.recipeBuilder()
    .inputs([<enderio:block_infinity>])
    .outputs([<enderio:item_material:20> * 4])
    .duration(500)
    .EUt(480)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs([<enderio:block_infinity:1>])
    .outputs([<enderio:item_material:20> * 16])
    .duration(500)
    .EUt(480)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs([<enderio:block_infinity:2>])
    .outputs([<enderio:item_material:20> * 64])
    .duration(500)
    .EUt(480)
    .buildAndRegister();

# Infinity Dust Block
compressor.recipeBuilder()
    .inputs([<enderio:item_material:20> * 4])
    .outputs([<enderio:block_infinity>])
    .duration(500)
    .EUt(480)
    .buildAndRegister();
rock_breaker.recipeBuilder()
    .notConsumable([<enderio:block_infinity>])
    .outputs([<enderio:block_infinity>])
    .duration(100)
    .EUt(480)
    .buildAndRegister();

# Compressed Infinity Dust Block
compressor.recipeBuilder()
    .inputs([<enderio:block_infinity> * 4])
    .outputs([<enderio:block_infinity:1>])
    .duration(500)
    .EUt(480)
    .buildAndRegister();

# Double Compressed Infinity Dust Block
compressor.recipeBuilder()
    .inputs([<enderio:block_infinity:1> * 4])
    .outputs([<enderio:block_infinity:2>])
    .duration(500)
    .EUt(480)
    .buildAndRegister();

# Glowstone Nano-Particles
macerator.recipeBuilder()
    .inputs([<ore:itemClayedGlowstone>])
    .outputs([<enderio:block_holier_fog>])
    .duration(56)
    .EUt(480)
    .buildAndRegister();

# Glowstone Nano-Particles
JEI.hide(<enderio:block_holy_fog>);
JEI.hide(<enderio:block_holier_fog>);

# Owl Egg
JEI.hide(<enderio:item_owl_egg>);

# Grainy Capacior
JEI.hide(<enderio:item_capacitor_grainy>);
