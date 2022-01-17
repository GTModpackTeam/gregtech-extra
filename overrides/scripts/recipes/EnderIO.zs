# Imoprts
import mods.jei.JEI;
import mods.enderio.AlloySmelter;
import mods.enderio.SagMill;
import mods.enderio.SliceNSplice;



########################################
# Items
########################################
# Electromagnet
recipes.remove(<enderio:item_magnet>);
recipes.addShaped(<enderio:item_magnet>, [
    [<ore:ingotRedAlloy>, <ore:gemEmerald>, <ore:ingotRedAlloy>],
    [<ore:ingotRedAlloy>, null, <ore:ingotRedAlloy>],
    [<ore:ingotSteel>, null, <ore:ingotSteel>]
]);

# Wooden Gear
JEI.removeAndHide(<enderio:item_material:9>);
<ore:gearWood>.remove(<enderio:item_material:9>);

# Stone Gear
JEI.removeAndHide(<enderio:item_material:10>);
<ore:gearStone>.remove(<enderio:item_material:10>);

# Ender Dust
JEI.removeAndHide(<enderio:item_material:28>);
JEI.removeAndHide(<appliedenergistics2:material:46>);

# Enderios
recipes.remove(<enderio:item_ender_food>);
recipes.addShaped(<enderio:item_ender_food>, [
    [<minecraft:bowl>, <minecraft:milk_bucket>, null],
    [<minecraft:wheat>, <ore:dustEnderPearl>, null],
    [null, null, null]
]);

# Clippings and Trimmings
macerator.recipeBuilder().
    inputs([<ore:grass>]).
    outputs([<enderio:item_material:46>]).
    duration(100).
    EUt(480).
    buildAndRegister();

# Twings and Prunings
macerator.recipeBuilder().
    inputs([<minecraft:deadbush>]).
    outputs([<enderio:item_material:47>]).
    duration(100).
    EUt(480).
    buildAndRegister();

# Organic Green Dye
alloy_smelter.recipeBuilder().
    inputs([
        <enderio:item_material:46> * 6,
        <minecraft:egg>
    ]).
    outputs([<enderio:item_material:48>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Organic Brown Dye
alloy_smelter.recipeBuilder().
    inputs([
        <enderio:item_material:47> * 6,
        <minecraft:egg>
    ]).
    outputs([<enderio:item_material:49>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Organic Black Dye
alloy_smelter.recipeBuilder().
    inputs([
        <ore:dustCoal> * 3,
        <minecraft:egg>
    ]).
    outputs([<enderio:item_material:50>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Silicon
JEI.removeAndHide(<enderio:item_material:5>);
SagMill.removeRecipe(<minecraft:clay>);
SagMill.removeRecipe(<minecraft:sand:*>);
SagMill.removeRecipe(<minecraft:redstone_ore>);

# Basic Capacitor
recipes.remove(<enderio:item_basic_capacitor>);
assembler.recipeBuilder().
    inputs([
        <ore:ingotRoseGold> * 4,
        <gregtech:meta_item_1:717>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<enderio:item_basic_capacitor>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Double-layer Capacitor
recipes.remove(<enderio:item_basic_capacitor:1>);
assembler.recipeBuilder().
    inputs([
        <enderio:item_basic_capacitor> * 2,
        <ore:dustCoal>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<enderio:item_basic_capacitor:1>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Double-layer Capacitor
recipes.remove(<enderio:item_basic_capacitor:1>);
assembler.recipeBuilder().
    inputs([
        <enderio:item_basic_capacitor> * 2,
        <ore:dustCoal>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<enderio:item_basic_capacitor:1>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Zombie Eletrode
SliceNSplice.removeRecipe(<enderio:item_material:40>);
SliceNSplice.addRecipe(<enderio:item_material:40>, [
    <ore:ingotEnergeticAlloy>, <minecraft:skull:2>, <ore:ingotEnergeticAlloy>,
    <ore:dustSilicon>, <enderio:item_basic_capacitor>, <ore:dustSilicon>
]);
SliceNSplice.addRecipe(<enderio:item_material:40>, [
    <ore:ingotEnergeticAlloy>, <minecraft:skull:2>, <ore:ingotEnergeticAlloy>,
    <ore:dustSilicon>, <enderio:item_capacitor_silver>, <ore:dustSilicon>
]);

# Z-Logic Controller
SliceNSplice.removeRecipe(<enderio:item_material:41>);
SliceNSplice.addRecipe(<enderio:item_material:41>, [
    <ore:ingotSoularium>, <minecraft:skull:2>, <ore:ingotSoularium>,
    <ore:dustSilicon>, <ore:dustRedstone>, <ore:dustSilicon>
]);

# Ender Resonator
SliceNSplice.removeRecipe(<enderio:item_material:43>);
SliceNSplice.addRecipe(<enderio:item_material:43>, [
    <ore:ingotSoularium>, <enderio:block_enderman_skull>, <ore:ingotSoularium>,
    <ore:dustSilicon>, <ore:ingotVibrantAlloy>, <ore:dustSilicon>
]);

# Octadic Capacitor
recipes.remove(<enderio:item_basic_capacitor:2>);
assembler.recipeBuilder().
    inputs([
        <enderio:item_basic_capacitor:1> * 2,
        <ore:glowstone>
    ]).
    fluidInputs([<liquid:redstone> * 144]).
    outputs([<enderio:item_basic_capacitor:2>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Electrical Steel Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotSteel>,
        <ore:dustSilicon>
    ]).
    outputs([<enderio:item_alloy_ingot>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Energetic Alloy Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotRedAlloy>,
        <ore:dustGlowstone>
    ]).
    outputs([<enderio:item_alloy_ingot:1>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Vibrant Alloy Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <enderio:item_alloy_ingot:1>,
        <ore:dustEnderPearl>
    ]).
    outputs([<enderio:item_alloy_ingot:2>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Redstone Alloy Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotRedAlloy>,
        <ore:dustSilicon>
    ]).
    outputs([<enderio:item_alloy_ingot:3>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Conductive Iron Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotIron>,
        <ore:dustRedstone>
    ]).
    outputs([<enderio:item_alloy_ingot:4>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Plusating Iron Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotIron>,
        <ore:dustEnderPearl>
    ]).
    outputs([<enderio:item_alloy_ingot:5>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Dark Steel Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotSteel>,
        <ore:dustObsidian>
    ]).
    outputs([<enderio:item_alloy_ingot:6>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Soularium Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotGold>,
        <minecraft:soul_sand>
    ]).
    outputs([<enderio:item_alloy_ingot:7>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# End Steel Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <enderio:item_alloy_ingot:6>,
        <minecraft:end_stone>
    ]).
    outputs([<enderio:item_alloy_ingot:8>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Iron Alloy Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <enderio:item_alloy_ingot:6>,
        <ore:dustCobalt>
    ]).
    outputs([<enderio:item_alloy_ingot:9>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Nethercotta
alloy_smelter.recipeBuilder().
    inputs([
        <ore:cropNetherWart>,
        <ore:ingotBrickNether> * 9
    ]).
    outputs([<enderio:item_material:72>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Crude Steel Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <minecraft:gravel>,
        <minecraft:clay_ball> * 9
    ]).
    outputs([<enderio:item_alloy_endergy_ingot>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Crystalling Alloy Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotGold>,
        <ore:itemPrecientPowder>
    ]).
    outputs([<enderio:item_alloy_endergy_ingot:1>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Melodic Alloy Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotEndSteel>,
        <minecraft:chorus_fruit_popped>
    ]).
    outputs([<enderio:item_alloy_endergy_ingot:2>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Stellar Alloy Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotMelodicAlloy>,
        <minecraft:nether_star> * 2
    ]).
    outputs([<enderio:item_alloy_endergy_ingot:3>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Crystalling Pink Slime Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotMelodicAlloy>,
        <minecraft:slime_ball> * 8
    ]).
    outputs([<enderio:item_alloy_endergy_ingot:4>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Energetic Silver Ingot
alloy_smelter.recipeBuilder().
    inputs([
        <enderio:item_alloy_ingot:1>,
        <ore:ingotSilver>
    ]).
    outputs([<enderio:item_alloy_endergy_ingot:5>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Vivid Alloy Ingote
alloy_smelter.recipeBuilder().
    inputs([
        <ore:ingotEnergeticSilver>,
        <ore:dustEnderPearl>
    ]).
    outputs([<enderio:item_alloy_endergy_ingot:6>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Death Urn
alloy_smelter.recipeBuilder().
    inputs([
        <minecraft:dye:15> * 7,
        <enderio:item_material:81>
    ]).
    outputs([<enderio:block_death_pouch>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Death Urn
alloy_smelter.recipeBuilder().
    inputs([
        <minecraft:glowstone_dust>,
        <minecraft:clay_ball>
    ]).
    outputs([<enderio:item_material:76>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Remote Awareness Upgrade
recipes.remove(<enderio:item_material:64>);
recipes.addShaped(<enderio:item_material:64>, [
    [<enderio:item_material:4>, <ore:dustIron>, <enderio:item_material:4>],
    [<ore:dustIron>, <minecraft:ender_eye>, <ore:dustIron>],
    [<enderio:item_material:4>, <enderio:item_alloy_ingot>, <enderio:item_material:4>]
]);

# Electric Light
recipes.remove(<enderio:block_electric_light>);
recipes.addShaped(<enderio:block_electric_light>, [
    [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>], 
    [<ore:plateSilicon>, <ore:dustGlowstone>, <ore:plateSilicon>], 
    [<ore:plateSilicon>, <enderio:item_basic_capacitor>, <ore:plateSilicon>]
]);

# Photovoltaic Composite
recipes.remove(<enderio:item_material:38>);
recipes.addShaped(<enderio:item_material:38>, [
    [<ore:dustLapis>, <ore:dustCoal>, null],
    [<ore:dustSilicon>, null, null],
    [null, null, null]
]);

# Photovoltaic Plate
AlloySmelter.removeRecipe(<enderio:item_material:3>);
alloy_smelter.recipeBuilder().
    inputs([
        <enderio:item_material:38> * 8,
        <ore:dustSilicon>
    ]).
    outputs([<enderio:item_material:3>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Grains of Infinite
macerator.recipeBuilder().
    inputs([<ore:compressed6xCobblestone>]).
    outputs([<enderio:item_material:20>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Coal Dust
SagMill.removeRecipe(<minecraft:flower_pot>);
<ore:dustCoal>.remove(<enderio:item_material:23>);

# Iron Dust
<ore:dustIron>.remove(<enderio:item_material:24>);
furnace.remove(<minecraft:iron_ingot>, <enderio:item_material:24>);

# Gold Dust
<ore:dustGold>.remove(<enderio:item_material:25>);
furnace.remove(<minecraft:gold_ingot>, <enderio:item_material:25>);

# Copper Dust
<ore:dustCopper>.remove(<enderio:item_material:26>);

# Tin Dust
<ore:dustTin>.remove(<enderio:item_material:27>);

# Enderpearl Dust
SagMill.removeRecipe(<minecraft:ender_pearl>);
SagMill.removeRecipe(<gregtech:meta_dust:416>);
JEI.removeAndHide(<enderio:item_material:28>);
// <ore:nuggetEnderpearl>.remove(<enderio:item_material:28>);

# Obsidian Dust
SagMill.removeRecipe(<minecraft:obsidian>);
<ore:dustObsidian>.remove(<enderio:item_material:29>);

# Cobalt Dust
<ore:dustCobalt>.remove(<enderio:item_material:31>);

# Lapis Dust
SagMill.removeRecipe(<minecraft:dye:4>);
SagMill.removeRecipe(<minecraft:lapis_block>);
<ore:dustLapis>.remove(<enderio:item_material:32>);

# NetherQuartz Dust
<ore:dustNetherQuartz>.remove(<enderio:item_material:33>);



########################################
# Blocks
########################################
# Fused Quartz
alloy_smelter.recipeBuilder().
    inputs([<ore:blockQuartz>]).
    outputs([<enderio:block_fused_quartz>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Quite Clear Glass
alloy_smelter.recipeBuilder().
    inputs([<ore:blockGlass>]).
    outputs([<enderio:block_fused_glass>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Enlightened Fused Quartz
alloy_smelter.recipeBuilder().
    inputs([
        <ore:blockQuartz>,
        <ore:dustGlowstone> * 4
    ]).
    outputs([<enderio:block_enlightened_fused_quartz>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Enlightened Clear Glass
alloy_smelter.recipeBuilder().
    inputs([
        <ore:blockGlass>,
        <ore:dustGlowstone> * 4
    ]).
    outputs([<enderio:block_enlightened_fused_glass>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Dark Fused Quartz
alloy_smelter.recipeBuilder().
    inputs([
        <ore:dyeBlack>,
        <ore:gemNetherQuartz> * 4
    ]).
    outputs([<enderio:block_dark_fused_quartz>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Dark Clear Glass
alloy_smelter.recipeBuilder().
    inputs([
        <ore:blockGlass>,
        <ore:dyeBlack> * 2
    ]).
    outputs([<enderio:block_dark_fused_glass>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Industrial Machine Chassis
alloy_smelter.recipeBuilder().
    inputs([
        <ore:itemSimpleMachineChassi>,
        <ore:dyeMachine>
    ]).
    outputs([<enderio:item_material:1>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Soul Machine Chassis
alloy_smelter.recipeBuilder().
    inputs([
        <ore:itemSimpleMachineChassi>,
        <ore:dyeSoulMachine>
    ]).
    outputs([<enderio:item_material:53>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Enhanced Machine Chassis
alloy_smelter.recipeBuilder().
    inputs([
        <ore:itemEndSteelMachineChassi>,
        <ore:dyeEnhancedMachine>
    ]).
    outputs([<enderio:item_material:54>]).
    duration(50).
    EUt(480).
    buildAndRegister();

# Stirling Furnace
JEI.removeAndHide(<enderio:block_simple_furnace>);

# Stirling Generator
// recipes.remove(<enderio:block_stirling_generator>);
// recipes.addShaped(<enderio:block_stirling_generator>, [
//     [<ore:stoneBricks>, <minecraft:furnace>, <ore:stoneBricks>],
//     [<ore:ingotDarkSteel>, <enderio:item_material:1>, <ore:ingotDarkSteel>],
//     [<enderio:item_material:73>, <minecraft:piston>, <enderio:item_material:73>]
// ]);

# The Niard
JEI.removeAndHide(<enderio:block_niard>);

# Alloy Smelter
JEI.hideCategory("AlloySmelter");
JEI.removeAndHide(<enderio:block_simple_alloy_smelter>);
JEI.removeAndHide(<enderio:block_alloy_smelter>);
JEI.removeAndHide(<enderio:block_enhanced_alloy_smelter>);

# SAG Mill
JEI.removeAndHide(<enderio:block_simple_sag_mill>);
recipes.remove(<enderio:block_sag_mill>);
recipes.addShaped(<enderio:block_sag_mill>, [
    [<ore:ingotElectricalSteel>, <gregtech:meta_item_1:266>, <ore:ingotElectricalSteel>],
    [<minecraft:flint>, <enderio:item_material:1>, <minecraft:flint>],
    [<gregtech:meta_item_1:129>, <enderio:item_basic_capacitor:2>, <gregtech:meta_item_1:129>]
]);

# Crafter
JEI.removeAndHide(<enderio:block_simple_crafter>);
recipes.remove(<enderio:block_crafter>);
recipes.addShaped(<enderio:block_crafter>, [
    [<ore:dustSilicon>, <ore:dustSilicon>, <ore:dustSilicon>], 
    [<enderio:item_alloy_ingot:9>, <ore:itemMachineChassi>, <enderio:item_alloy_ingot:9>], 
    [<ore:gearIronInfinity>, <ore:workbench>, <ore:gearIronInfinity>]
]);

# Buffer
JEI.removeAndHide(<enderio:block_buffer>);
JEI.removeAndHide(<enderio:block_buffer:1>);
JEI.removeAndHide(<enderio:block_buffer:2>);

# Tank
JEI.hideCategory("EIOTank");
JEI.removeAndHide(<enderio:block_tank>);
JEI.removeAndHide(<enderio:block_tank:1>);

# Endervoir
JEI.removeAndHide(<enderio:block_reservoir>);

# Omnivoir
JEI.removeAndHide(<enderio:block_omni_reservoir>);

# Vacuum Chest
JEI.removeAndHide(<enderio:block_vacuum_chest>);

# Wired Charger
recipes.remove(<enderio:block_simple_wired_charger>);
recipes.addShaped(<enderio:block_simple_wired_charger>, [
    [<ore:cobblestone>, <ore:ingotIron>, <ore:cobblestone>],
    [<ore:ingotIron>, <enderio:item_material>, <ore:ingotIron>],
    [<ore:cobblestone>, <ore:ingotIron>, <ore:cobblestone>]
]);

# Reinforced Obsidian
recipes.remove(<enderio:block_reinforced_obsidian>);
recipes.addShaped(<enderio:block_reinforced_obsidian>, [
    [<enderio:item_alloy_ingot:6>, <enderio:block_infinity>, <enderio:item_alloy_ingot:6>],
    [<enderio:block_infinity>, <minecraft:obsidian>, <enderio:block_infinity>],
    [<enderio:item_alloy_ingot:6>, <enderio:block_infinity>, <enderio:item_alloy_ingot:6>]
]);

# Energy Conduit
JEI.removeAndHide(<enderio:item_power_conduit:*>);
JEI.removeAndHide(<enderio:item_endergy_conduit:*>);
