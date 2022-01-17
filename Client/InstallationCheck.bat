@Echo Off
# 02 "Green"
# 04 "Red"
cls && color 08

for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a")

goto :end

:PainText
<nul set /p "=%DEL%" > "%~2"
findstr /v /a:%1 /R "+" "%~2" nul
del "%~2" > nul
goto :eof

:end
dir /a-drhasil
call :PainText 06 "~----------------------------------------------------~"
echo. &
call :PainText 06 "!                                                    !"
echo. &
call :PainText 06 "!        Epic Valheim Installation check             !"
echo. &
call :PainText 06 "!  Make sure this .bat is in your valheim directory  !"
echo. &
call :PainText 06 "!             Press 'Enter' to start                 !"
echo. &
call :PainText 06 "!                                                    !"
echo. &
call :PainText 06 "~----------------------------------------------------~"
echo. &


pause

set var=0

if exist ".\BepInEx\plugins\" call :PainText 02 "BepInEx Found." 
if not exist ".\BepInEx\plugins\"  call :PainText 04 "BepInEx Missing. Make sure this .bat is in your valheim root folder" 
echo. &
if not exist ".\BepInEx\plugins\" pause 
if not exist ".\BepInEx\plugins\" exit

echo. &

if exist ".\BepInEx\plugins\SkillInjector.dll" call :PainText 02 "SkillInjector Found."
if not exist ".\BepInEx\plugins\SkillInjector.dll" call :PainText 04 "SkillInjector Missing or not installed correctly." 
if not exist ".\BepInEx\plugins\SkillInjector.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\SkillInjector\" call :PainText 02 " = SkillInjector Found. but in sub folder."
if exist ".\BepInEx\plugins\SkillInjector\" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\ExtendedItemDataFramework.dll" call :PainText 02 "ExtendedItemDataFramework Found."
if not exist ".\BepInEx\plugins\ExtendedItemDataFramework.dll" call :PainText 04 "ExtendedItemDataFramework Missing or not installed correctly."
if not exist ".\BepInEx\plugins\ExtendedItemDataFramework.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\ExtendedItemDataFramework\" call :PainText 02 " = ExtendedItemDataFramework Found. but in sub folder."
if exist ".\BepInEx\plugins\ExtendedItemDataFramework\" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\patchers\BepInEx.MonoMod.HookGenPatcher\BepInEx.MonoMod.HookGenPatcher.dll" call :PainText 02 "HookGenPatcher Found."
if not exist ".\BepInEx\patchers\BepInEx.MonoMod.HookGenPatcher\BepInEx.MonoMod.HookGenPatcher.dll" call :PainText 04 "HookGenPatcher Missing or not installed correctly."
if not exist ".\BepInEx\patchers\BepInEx.MonoMod.HookGenPatcher\BepInEx.MonoMod.HookGenPatcher.dll" set /a var=%var% + 1 

echo. &

if exist ".\BepInEx\plugins\BlacksmithTools.dll" call :PainText 02 "BlacksmithTools Found."
if not exist ".\BepInEx\plugins\BlacksmithTools.dll" call :PainText 04 "BlacksmithTools Missing or not installed correctly."
if not exist ".\BepInEx\plugins\BlacksmithTools.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\BlacksmithTools\" call :PainText 02 " = BlacksmithTools Found. but in sub folder."
if exist ".\BepInEx\plugins\BlacksmithTools\" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\Jotunn.dll" call :PainText 02 "Jotunn Found."
if not exist ".\BepInEx\plugins\Jotunn.dll" call :PainText 04 "Jotunn Missing or not installed correctly."
if not exist ".\BepInEx\plugins\Jotunn.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\Jotunn\" call :PainText 02 " = Jotunn Found. but in sub folder."
if exist ".\BepInEx\plugins\Jotunn\" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\EpicLoot\EpicLoot.dll" call :PainText 02 "EpicLoot Found."
if not exist ".\BepInEx\plugins\EpicLoot\EpicLoot.dll" call :PainText 04 "EpicLoot Missing or not installed correctly."
if not exist ".\BepInEx\plugins\EpicLoot\EpicLoot.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\EpicLoot.dll" call :PainText 02 " = EpicLoot Found. It isn't in it's sub folder."
if exist ".\BepInEx\plugins\EpicLoot.dll" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\config\Monsternomicon\" call :PainText 02 "Monsternomicon Found."
if not exist ".\BepInEx\config\Monsternomicon\" call :PainText 04 "Monsternomicon Missing or not installed correctly."
if not exist ".\BepInEx\config\Monsternomicon\" set /a var=%var% + 1 

echo. &

if exist ".\BepInEx\plugins\MonsterLabZ\DYBAssets.dll" call :PainText 02 "MonsterLabZ Found."
if not exist ".\BepInEx\plugins\MonsterLabZ\DYBAssets.dll" call :PainText 04 "MonsterLabZ Missing or not installed correctly."
if not exist ".\BepInEx\plugins\MonsterLabZ\DYBAssets.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\DYBAssets.dll" call :PainText 02 " = MonsterLabZ Found. It isn't in it's sub folder."
if exist ".\BepInEx\plugins\DYBAssets.dll" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\config\MonsterLabZ\" call :PainText 02 "MonsterLabZ Config Found."
if not exist ".\BepInEx\config\MonsterLabZ\" call :PainText 04 "MonsterLabZ Config Missing or not installed correctly."
if not exist ".\BepInEx\config\MonsterLabZ\" set /a var=%var% + 1 

echo. &

if exist ".\BepInEx\plugins\CreatureLevelControl.dll" call :PainText 02 "CreatureLevelControl Found.
if not exist ".\BepInEx\plugins\CreatureLevelControl.dll" call :PainText 04 "CreatureLevelControl Missing or not installed correctly."
if not exist ".\BepInEx\plugins\CreatureLevelControl.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\Smoothbrain-CreatureLevelAndLootControl-4.4.5" call :PainText 02 " = CreatureLevelControl Found. but in sub folder."
if exist ".\BepInEx\plugins\Smoothbrain-CreatureLevelAndLootControl-4.4.5" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\AeehyehssReeper-ChaosArmor\ChaosArmor.dll" call :PainText 02 "ChaosArmor Found.
if not exist ".\BepInEx\plugins\AeehyehssReeper-ChaosArmor\ChaosArmor.dll" call :PainText 04 "ChaosArmor Missing or not installed correctly."
if not exist ".\BepInEx\plugins\AeehyehssReeper-ChaosArmor\ChaosArmor.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\ChaosArmor\" call :PainText 02 " = ChaosArmor Found. but in sub folder."
if exist ".\BepInEx\plugins\ChaosArmor\" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\Valheim.DropThat.dll" call :PainText 02 "DropThat Found."
if not exist ".\BepInEx\plugins\Valheim.DropThat.dll" call :PainText 04 "DropThat Missing or not installed correctly."
if not exist ".\BepInEx\plugins\Valheim.DropThat.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\Valheim.DropThat\" call :PainText 02 " = DropThat Found. but in sub folder."
if exist ".\BepInEx\plugins\Valheim.DropThat\" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\Valheim.SpawnThat.dll" call :PainText 02 "SpawnThat Found."
if not exist ".\BepInEx\plugins\Valheim.SpawnThat.dll" call :PainText 04 "SpawnThat Missing or not installed correctly."
if not exist ".\BepInEx\plugins\Valheim.SpawnThat.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\Valheim.SpawnThat\" call :PainText 02 " = SpawnThat Found. but in sub folder."
if exist ".\BepInEx\plugins\Valheim.SpawnThat\" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\Valheim.CustomRaids.dll" call :PainText 02 "CustomRaids Found."
if not exist ".\BepInEx\plugins\Valheim.CustomRaids.dll" call :PainText 04 "CustomRaids Missing or not installed correctly."
if not exist ".\BepInEx\plugins\Valheim.CustomRaids.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\Valheim.CustomRaids\" call :PainText 02 " = CustomRaids Found. but in sub folder."
if exist ".\BepInEx\plugins\Valheim.CustomRaids\" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\RRRCore.dll" call :PainText 02 "RRRCore Found."
if not exist ".\BepInEx\plugins\RRRCore.dll" call :PainText 04 "RRRCore Missing or not installed correctly."
if not exist ".\BepInEx\plugins\RRRCore.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\RRRCore\" call :PainText 02 " = RRRCore Found. but in sub folder."
if exist ".\BepInEx\plugins\RRRCore\" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\RRRMonsters.dll" call :PainText 02 "RRRMonsters Found."
if not exist ".\BepInEx\plugins\RRRMonsters.dll" call :PainText 04 "RRRMonsters Missing or not installed correctly."
if not exist ".\BepInEx\plugins\RRRMonsters.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\RRRMonsters\" call :PainText 02 " = RRRMonsters Found. but in sub folder."
if exist ".\BepInEx\plugins\RRRMonsters\" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\RRRNpcs.dll" call :PainText 02 "RRRNpcs Found."
if not exist ".\BepInEx\plugins\RRRNpcs.dll" call :PainText 04 "RRRNpcs Missing or not installed correctly."
if not exist ".\BepInEx\plugins\RRRNpcs.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\RRRNpcs\" call :PainText 02 " = RRRNpcs Found. but in sub folder."
if exist ".\BepInEx\plugins\RRRNpcs\" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\ABearCodes.Valheim.SimpleRecycling.dll" call :PainText 02 "SimpleRecycling Found."
if not exist ".\BepInEx\plugins\ABearCodes.Valheim.SimpleRecycling.dll" call :PainText 04 "SimpleRecycling Missing or not installed correctly."
if not exist ".\BepInEx\plugins\ABearCodes.Valheim.SimpleRecycling.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\ABearCodes.Valheim.SimpleRecycling\" call :PainText 02 " = SimpleRecycling Found. but in sub folder."
if exist ".\BepInEx\plugins\ABearCodes.Valheim.SimpleRecycling\" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\CustomArmorStats.dll" call :PainText 02 "CustomArmorStats Found."
if not exist ".\BepInEx\plugins\CustomArmorStats.dll" call :PainText 04 "CustomArmorStats Missing or not installed correctly."
if not exist ".\BepInEx\plugins\CustomArmorStats.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\CustomArmorStats\CustomArmorStats.dll" call :PainText 02 " = CustomArmorStats Found. but in sub folder."
if exist ".\BepInEx\plugins\CustomArmorStats\CustomArmorStats.dll" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\RecipeCustomization.dll" call :PainText 02 "RecipeCustomization Found."
if not exist ".\BepInEx\plugins\RecipeCustomization.dll" call :PainText 04 "RecipeCustomization Missing or not installed correctly."
if not exist ".\BepInEx\plugins\RecipeCustomization.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\RecipeCustomization\RecipeCustomization.dll" call :PainText 02 " = RecipeCustomization Found. but in sub folder."
if exist ".\BepInEx\plugins\RecipeCustomization\RecipeCustomization.dll" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\MassFarming\MassFarming.dll" call :PainText 02 "MassFarming Found."
if not exist ".\BepInEx\plugins\MassFarming\MassFarming.dll" call :PainText 04 "MassFarming Missing or not installed correctly."
if not exist ".\BepInEx\plugins\MassFarming\MassFarming.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\MassFarming.dll" call :PainText 02 " = MassFarming Found. It isn't in it's sub folder."
if exist ".\BepInEx\plugins\MassFarming.dll" set /a var=%var% - 1

echo. &

if exist ".\BepInEx\plugins\EpicValheim'sAdditions\EpicValheimsAdditions.dll" call :PainText 02 "EpicValheimsAdditions Found."
if not exist ".\BepInEx\plugins\EpicValheim'sAdditions\EpicValheimsAdditions.dll" call :PainText 04 "EpicValheimsAdditions Missing or not installed correctly."
if not exist ".\BepInEx\plugins\EpicValheim'sAdditions\EpicValheimsAdditions.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\EpicValheimsAdditions.dll" call :PainText 02 " = EpicValheimsAdditions Found. but it isn't in it's subfolder."
if exist ".\BepInEx\plugins\EpicValheimsAdditions.dll" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\BoneAppetit.dll" call :PainText 02 "BoneAppetit Found."
if not exist ".\BepInEx\plugins\BoneAppetit.dll" call :PainText 04 "BoneAppetit Missing or not installed correctly."
if not exist ".\BepInEx\plugins\BoneAppetit.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\BoneAppetit\" call :PainText 02 " = BoneAppetit Found. but in sub folder."
if exist ".\BepInEx\plugins\BoneAppetit\" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\Advize_PlantEverything.dll" call :PainText 02 "PlantEverything Found."
if not exist ".\BepInEx\plugins\Advize_PlantEverything.dll" call :PainText 04 "PlantEverything Missing or not installed correctly."
if not exist ".\BepInEx\plugins\Advize_PlantEverything.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\Advize_PlantEverything\" call :PainText 02 " = PlantEverything Found. but in sub folder."
if exist ".\BepInEx\plugins\Advize_PlantEverything\" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\Forgotten_Biomes\Forgotten_Biomes.dll" call :PainText 02 "Forgotten_Biomes Found."
if not exist ".\BepInEx\plugins\Forgotten_Biomes\Forgotten_Biomes.dll" call :PainText 04 "Forgotten_Biomes Missing or not installed correctly"
if not exist ".\BepInEx\plugins\Forgotten_Biomes\Forgotten_Biomes.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\ForgottenBiomes\Forgotten_Biomes.dll" call :PainText 02 " = Forgotten_Biomes Found. but in a differently named sub folder."
if exist ".\BepInEx\plugins\ForgottenBiomes\Forgotten_Biomes.dll" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\VitalityMod.dll" call :PainText 02 "VitalityMod Found."
if not exist ".\BepInEx\plugins\VitalityMod.dll" call :PainText 04 "VitalityMod Missing or not installed correctly."
if not exist ".\BepInEx\plugins\VitalityMod.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\VitalityMod\VitalityMod.dll" call :PainText 02 " = VitalityMod Found. but in sub folder."
if exist ".\BepInEx\plugins\VitalityMod\VitalityMod.dll" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\BetterTrader\BetterTrader.dll" call :PainText 02 "BetterTrader Found."
if not exist ".\BepInEx\plugins\BetterTrader\BetterTrader.dll" call :PainText 04 "BetterTrader Missing or not installed correctly."
if not exist ".\BepInEx\plugins\BetterTrader\BetterTrader.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\BetterTrader.dll" call :PainText 02 " = BetterTrader Found. It isn't in it's sub folder."
if exist ".\BepInEx\plugins\BetterTrader.dll" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\skyheim.dll" call :PainText 02 "Skyheim Found."
if not exist ".\BepInEx\plugins\skyheim.dll" call :PainText 04 "Skyheim Missing or not installed correctly."
if not exist ".\BepInEx\plugins\skyheim.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\skyheim\skyheim.dll" call :PainText 02 " = Skyheim Found. but in sub folder."
if exist ".\BepInEx\plugins\skyheim\skyheim.dll" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\Digitalroot.Valheim.EpicLoot.Adventure.Bounties\Digitalroot.Valheim.EpicLoot.Adventure.Bounties.dll" call :PainText 02 "EpicLootBounties Core Found."
if not exist ".\BepInEx\plugins\Digitalroot.Valheim.EpicLoot.Adventure.Bounties\Digitalroot.Valheim.EpicLoot.Adventure.Bounties.dll" call :PainText 04 "EpicLootBounties Core Missing or not installed correctly."
if not exist ".\BepInEx\plugins\Digitalroot.Valheim.EpicLoot.Adventure.Bounties\Digitalroot.Valheim.EpicLoot.Adventure.Bounties.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\Digitalroot.Valheim.EpicLoot.Adventure.Bounties.dll" call :PainText 02 " = EpicLootBounties Core Found. It isn't in it's sub folder."
if exist ".\BepInEx\plugins\Digitalroot.Valheim.EpicLoot.Adventure.Bounties.dll" set /a var=%var% - 1 

echo. &

if exist    ".\BepInEx\plugins\Digitalroot.EpicLoot.Bounties.EpicValheim\Digitalroot.EpicLoot.Bounties.EpicValheim.dll" call :PainText 02 "EpicLootBounties EV Found."
if not exist ".\BepInEx\plugins\Digitalroot.EpicLoot.Bounties.EpicValheim\Digitalroot.EpicLoot.Bounties.EpicValheim.dll" call :PainText 04 "EpicLootBounties EV Missing or not installed correctly."
if not exist ".\BepInEx\plugins\Digitalroot.EpicLoot.Bounties.EpicValheim\Digitalroot.EpicLoot.Bounties.EpicValheim.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\Digitalroot.EpicLoot.Bounties.EpicValheim.dll" call :PainText 02 " = EpicLootBounties EV Found. It isn't in it's sub folder."
if exist ".\BepInEx\plugins\Digitalroot.EpicLoot.Bounties.EpicValheim.dll" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\config\supplementalraids" call :PainText 02 "SupplementalRaids Found."
if not exist ".\BepInEx\config\supplementalraids" call :PainText 04 "SupplementalRaids Missing or not installed correctly."
if not exist ".\BepInEx\config\supplementalraids" set /a var=%var% + 1

echo. &

if exist ".\BepInEx\plugins\RRRBetterRaids.dll" call :PainText 02 "RRRBetterRaids Found."
if not exist ".\BepInEx\plugins\RRRBetterRaids.dll" call :PainText 04 "RRRBetterRaids Missing or not installed correctly."
if not exist ".\BepInEx\plugins\RRRBetterRaids.dll" set /a var=%var% + 1
if exist ".\BepInEx\plugins\RRRBetterRaids\RRRBetterRaids.dll" call :PainText 02 " = RRRBetterRaids Found. but in sub folder."
if exist ".\BepInEx\plugins\RRRBetterRaids\RRRBetterRaids.dll" set /a var=%var% - 1 

echo. &

if exist ".\BepInEx\plugins\OpenDatabase.dll" call :PainText 02 "OpenDatabase Found."
if not exist ".\BepInEx\plugins\OpenDatabase.dll" call :PainText 04 "OpenDatabase Missing or not installed correctly."
if not exist ".\BepInEx\plugins\OpenDatabase.dll" set /a var=%var% + 1
if exist ".\BepInEx\plugins\OpenDatabase\OpenDatabase.dll" call :PainText 02 " = OpenDatabase Found. but in sub folder."
if exist ".\BepInEx\plugins\OpenDatabase\OpenDatabase.dll" set /a var=%var% - 1 

if exist ".\BepInEx\plugins\CustomWeaponStats.dll" call :PainText 06 "CustomWeaponStats Found, please delete it as it is not required anymore."
if exist ".\BepInEx\plugins\CustomWeaponStats.dll" set /a var=%var% + 1 
if exist ".\BepInEx\plugins\CustomWeaponStats\CustomWeaponStats.dll" call :PainText 06 " = CustomWeaponStats Found, please delete it as it is not required anymore."
if exist ".\BepInEx\plugins\CustomWeaponStats\CustomWeaponStats.dll" set /a var=%var% + 1 

echo. &

if exist ".\BepInEx\plugins\FoodRebalance\FoodEditor.dll" call :PainText 06 "FoodEditor Found, please delete it as it is not required anymore."
if exist ".\BepInEx\plugins\FoodRebalance\FoodEditor.dll" set /a var=%var% + 1
if exist ".\BepInEx\plugins\FoodEditor.dll" call :PainText 06 "FoodEditor Found, please delete it as it is not required anymore."
if exist ".\BepInEx\plugins\FoodEditor.dll" set /a var=%var% + 1 

echo. &


echo. &
echo. &
echo. &
if %var% gtr 0 call :PainText 04 "Detected %var% mods installed incorrectly, locate which %var% and fix it & try again."
echo. &
if %var% equ 0 call :PainText 02 "All mods installed correctly. %var% errors."
echo. &



pause