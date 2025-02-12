---
--- Created by Breno "MaDDoX" Azevedo.
--- DateTime: 26-Aug-20 8:49 PM
---
--- All per-unit upgrades info (command buttons to unlock, upgrade time, etc)

-- Settings + Button options (as shown in a given unit's command list)
-- Value is used as key of PUU (Per-unit upgrade table)
---TODO: Refactor so that this table is auto-generated from the upgradableDefIDs
---      entry in each upgrade.
---      currently this is required for the buttons to show up on the upgradable units
UnitResearchers = {
    --[UnitDefNames["corcom"].id] = "dgun",
    --[UnitDefNames["armcom"].id] = "dgun",
    [UnitDefNames["armamex"].id] = "unlockweapon",
    [UnitDefNames["corexp"].id] = "unlockweapon",
    [UnitDefNames["armpw"].id] = "grenade",
    [UnitDefNames["armsam"].id] = "firerain",
    --[UnitDefNames["corvrad"].id] = "resurrect",
    [UnitDefNames["corvrad"].id] = "neutronstrike",
    [UnitDefNames["armmark"].id] = "smokebomb",
    [UnitDefNames["cormist"].id] = "smokebomb",
    [UnitDefNames["armstump"].id] = "hover",
    [UnitDefNames["corraid"].id] = "hover",
    [UnitDefNames["armbull"].id] = "hover",
    [UnitDefNames["correap"].id] = "hover",
    [UnitDefNames["armflash"].id] = "hover", --armsam
    [UnitDefNames["cormist"].id] = "hover",
    [UnitDefNames["armmerl"].id] = "hover",
    [UnitDefNames["corban"].id] = "hover",
    [UnitDefNames["armlab"].id] = "nanobooster",
    [UnitDefNames["armvp"].id] = "nanobooster",
    [UnitDefNames["armap"].id] = "nanobooster",
    [UnitDefNames["armsy"].id] = "nanobooster",
    [UnitDefNames["armalab"].id] = "nanobooster",
    [UnitDefNames["armavp"].id] = "nanobooster",
    [UnitDefNames["armaap"].id] = "nanobooster",
    [UnitDefNames["armasy"].id] = "nanobooster",
    [UnitDefNames["corlab"].id] = "nanobooster",
    [UnitDefNames["corvp"].id] = "nanobooster",
    [UnitDefNames["corap"].id] = "nanobooster",
    [UnitDefNames["corsy"].id] = "nanobooster",
    [UnitDefNames["coralab"].id] = "nanobooster",
    [UnitDefNames["coravp"].id] = "nanobooster",
    [UnitDefNames["coraap"].id] = "nanobooster",
    [UnitDefNames["corasy"].id] = "nanobooster",
	[UnitDefNames["armvp"].id] = "techupgrade",
}

local CMD_CAPTURE = CMD.CAPTURE
local CMD_ATTACK = CMD.ATTACK
local CMD_MANUALFIRE = CMD.MANUALFIRE
local CMD_RESURRECT = CMD.RESURRECT

-- Per-unit upgrades button/CMD entries

CMD.UPG_DGUN = 41999
CMD_UPG_DGUN = CMD.UPG_DGUN

CMD.UPG_GRENADE = 41998
CMD_UPG_GRENADE = CMD.UPG_GRENADE

CMD.UPG_FIRERAIN = 41997
CMD_UPG_FIRERAIN = CMD.UPG_FIRERAIN

CMD.UPG_RESURRECT = 41996
CMD_UPG_RESURRECT = CMD.UPG_RESURRECT

CMD.UPG_NEUTRONSTRIKE = 41995
CMD_UPG_NEUTRONSTRIKE = CMD.UPG_NEUTRONSTRIKE

CMD.UPG_UNLOCKWEAPON = 41994
CMD_UPG_UNLOCKWEAPON = CMD.UPG_UNLOCKWEAPON

CMD.UPG_SMOKEBOMB = 41993
CMD_UPG_SMOKEBOMB = CMD.UPG_SMOKEBOMB

CMD.UPG_HOVER = 41992
CMD_UPG_HOVER = CMD.UPG_HOVER

CMD.UPG_NANOBOOSTER = 41991
CMD_UPG_NANOBOOSTER = CMD.UPG_NANOBOOSTER

CMD.UPG_TECHUPGRADE = 41990
CMD_UPG_TECHUPGRADE = CMD.UPG_TECHUPGRADE

UnitUpgradeCommands = {
	[41990] = true,
	[41991] = true,
    [41992] = true, 
    [41993] = true, 
    [41994] = true, 
    [41995] = true, 
    [41996] = true, 
    [41997] = true, 
    [41998] = true, 
    [41999] = true
}
-- Unit Upgrades (as shown in a certain unit's command list)
UnitUpgrades = {
    --dgun = {
    --    id = "dgun",
    --    UpgradeCmdDesc = {
    --        id      = CMD_UPG_DGUN,
    --        name    = '^ D-Gun',
    --        action  = 'dgunupgrade',
    --        cursor  = 'Morph',
    --        type    = CMDTYPE.ICON,
    --        tooltip = 'D-Gun Upgrade: Enables D-gun weapon [per unit]\n'..
    --                GreenStr..'time:n/a\n'..CyanStr..'metal: n/a\n'..YellowStr..'energy: n/a',
    --        texture = 'luaui/images/upgrades/cmd_upgdgun.png',
    --        onlyTexture = true,
    --        showUnique = true, --required by gui_chili_buildordermenu to show button as 'upgrading'
    --        --params = { '1', ' Fly ', 'Land'}
    --    },
    --    prereq = "T1 Commander",
    --    metalCost = 200,
    --    energyCost = 1200,
    --    upgradeTime = 10 * 30, --5 seconds, in frames
    --    type = "tech",          -- TODO: Currently unused. Should indicate special types (auras, debuffs, etc)
    --    alertWhenDone = true, -- [Optional] if true, fires an alert once completed
    --    buttonToUnlock = CMD_MANUALFIRE,
    --    buttonToUnlockTooltip = "", --automatically fed when button is locked (@ unit create)
    --    upgradableDefIDs = {},
    --},
    unlockweapon = {
        id = "unlockweapon",
        UpgradeCmdDesc = {
            id      = CMD_UPG_UNLOCKWEAPON,
            name    = '^ Weapon',
            action  = 'unlockweaponupgrade',
            cursor  = 'Morph',
            type    = CMDTYPE.ICON,
            tooltip = 'Unlock Weapon: Enables primary weapon [per unit]\n'..
                    GreenStr..'time:9\n'..CyanStr..'metal: 150\n'..YellowStr..'energy: 1000',
            texture = 'luaui/images/upgrades/techunlockweapon.dds',
            onlyTexture = true,
            showUnique = false, --required by gui_chili_buildordermenu to show button as 'upgrading'
            --params = { '1', ' Fly ', 'Land'}
        },
        prereq = "EnhancedTech",
        metalCost = 150,
        energyCost = 1000,
        upgradeTime = 9 * 15, --9 seconds, in frames
        type = "tech",          -- TODO: Currently unused. Should indicate special types (auras, debuffs, etc)
        alertWhenDone = false, -- [Optional] if true, fires an alert once completed
        buttonToUnlock = CMD_ATTACK,
        buttonToUnlockTooltip = "", --automatically fed when button is locked (@ unit create)
        upgradableDefIDs = {},
    },
    grenade = {     -- >> Peewee's Laser Grenade (Per Unit)
        id = "grenade",
        UpgradeCmdDesc = {
            id      = CMD_UPG_GRENADE,
            name    = '^ Grenade',
            action  = 'grenadeupgrade',
            cursor  = 'Morph',
            type    = CMDTYPE.ICON,
            tooltip = 'EMP Grenade upgrade: Enables manual-fire weapon [per unit]\n'..
                    GreenStr..'time:5\n'..CyanStr..'metal: 50\n'..YellowStr..'energy: 480',
            texture = 'luaui/images/upgrades/techempbomb.dds',
            onlyTexture = true,
            showUnique = false, --required by gui_chili_buildordermenu to show button as 'upgrading'
        },
        prereq = "Tech",
        metalCost = 50,
        energyCost = 480,     --6x metalCost
        upgradeTime = 5 * 15, --5 seconds, in frames
        type = "perunit",
        buttonToUnlock = CMD_MANUALFIRE,
        buttonToUnlockTooltip = "",
        upgradableDefIDs = { [UnitDefNames["armpw"].id] = true }
    },
    smokebomb = {     -- >> Peewee's Laser Grenade (Per Unit)
        id = "smokebomb",
        UpgradeCmdDesc = {
            id      = CMD_UPG_SMOKEBOMB,
            name    = '^ SmokeBomb',
            action  = 'smokebombupgrade',
            cursor  = 'Morph',
            type    = CMDTYPE.ICON,
            tooltip = 'Smoke Bomb upgrade: Enables manual-fire weapon [per unit]\n'..
                    GreenStr..'time:5\n'..CyanStr..'metal: 80\n'..YellowStr..'energy: 480',
            texture = 'luaui/images/upgrades/techsmokebomb.dds',
            onlyTexture = true,
            showUnique = false, --required by gui_chili_buildordermenu to show button as 'upgrading'
        },
        prereq = "EnhancedTech",
        metalCost = 80,
        energyCost = 480,     --6x metalCost
        upgradeTime = 5 * 15, --5 seconds, in frames
        type = "perunit",
        buttonToUnlock = CMD_MANUALFIRE,
        buttonToUnlockTooltip = "",
        upgradableDefIDs = {},
    },
    firerain = {     -- >> Arm Samson's Missile Shower (Per Unit)
        id = "firerain",
        UpgradeCmdDesc = {
            id      = CMD_UPG_FIRERAIN,
            name    = '^ FireRain',
            action  = 'firerainupgrade',
            cursor  = 'Morph',
            type    = CMDTYPE.ICON,
            tooltip = 'Fire Rain upgrade: Enables manual-fire Fire Rain weapon [per unit]\n'..
                    GreenStr..'time:10\n'..CyanStr..'metal: 250\n'..YellowStr..'energy: 1500',
            texture = 'luaui/images/upgrades/techfirerain.dds',
            onlyTexture = true,
            showUnique = false, --required by gui_chili_buildordermenu to show button as 'upgrading'
        },
        prereq = "EnhancedTech",
        metalCost = 250,
        energyCost = 1500, --960
        upgradeTime = 6 * 15, --6 seconds
        type = "perunit", --CMDTYPE.ICON_MAP
        buttonToUnlock = CMD_MANUALFIRE,
        buttonToUnlockTooltip = "",
        upgradableDefIDs = {},
    },
    neutronstrike = {     -- >> Cor Vrad Neutron Hailstorm (Per Unit)
        id = "neutronstrike",
        UpgradeCmdDesc = {
            id      = CMD_UPG_NEUTRONSTRIKE,
            name    = '^ NeutronStrike',
            action  = 'neutronstrikeupgrade',
            cursor  = 'Morph',
            type    = CMDTYPE.ICON,
            tooltip = 'Neutron Strike upgrade: Enables manual-fire Neutron Strike weapon [per unit]\n'..
                    GreenStr..'time:10\n'..CyanStr..'metal: 150\n'..YellowStr..'energy: 960',
            texture = 'luaui/images/upgrades/techfirerain.dds',
            onlyTexture = true,
            showUnique = false, --required by gui_chili_buildordermenu to show button as 'upgrading'
        },
        prereq = "EnhancedTech",
        metalCost = 150,
        energyCost = 960, --960
        upgradeTime = 8 * 15, --10 seconds, in frames
        type = "perunit", --CMDTYPE.ICON_MAP
        buttonToUnlock = CMD_MANUALFIRE,
        buttonToUnlockTooltip = "",
        upgradableDefIDs = {},
    },
    resurrect = {     -- >> Core Informer Resurrect (Per Unit)
        id = "resurrect",
        UpgradeCmdDesc = {
            id      = CMD_UPG_RESURRECT,
            name    = 'Upg Resurrect',
            action  = 'resurrectupgrade',
            cursor  = 'Morph',
            type    = CMDTYPE.ICON,
            tooltip = 'Resurrect upgrade: Enables ressurect ability [per unit]\n'..
                    GreenStr..'time:10\n'..CyanStr..'metal: 160\n'..YellowStr..'energy: 960',
            texture = 'luaui/images/upgrades/techresurrect.dds',
            onlyTexture = true,
            showUnique = false, --required by gui_chili_buildordermenu to show button as 'upgrading'
        },
        prereq = "EnhancedTech",
        metalCost = 160,
        energyCost = 960,
        upgradeTime = 6 * 15, --10 seconds, in frames
        type = "perunit",
        buttonToUnlock = CMD_RESURRECT,
        buttonToUnlockTooltip = "",
        upgradableDefIDs = {},
    },
    hover = {     -- >> Core Informer Resurrect (Per Unit)
        id = "hover",
        UpgradeCmdDesc = {
            id      = CMD_UPG_HOVER,
            name    = 'Upg Hover',
            action  = 'hoverupgrade',
            cursor  = 'Morph',
            type    = CMDTYPE.ICON,
            tooltip = 'Hover upgrade: Adds on-the-water mobility [per unit]\n'..
                    GreenStr..'time:4\n'..CyanStr..'metal: 80\n'..YellowStr..'energy: 450',
            texture = 'luaui/images/upgrades/techhover.dds',
            onlyTexture = true,
            showUnique = false, --required by gui_chili_buildordermenu to show button as 'upgrading'
        },
        prereq = "EnhancedTech",
        metalCost = 80,
        energyCost = 450,
        upgradeTime = 2 * 15,--4 * 30, --10 seconds, in frames
        type = "perunit",
        buttonToUnlock = nil,
        buttonToUnlockTooltip = "",
        upgradableDefIDs = { [UnitDefNames["armstump"].id] = true,  -- tanks (T1 & T2), missile trucks, T3 artillery
                             [UnitDefNames["corraid"].id] = true,
                             [UnitDefNames["armbull"].id] = true,
                             [UnitDefNames["correap"].id] = true,
                             [UnitDefNames["armsam"].id] = true,
                             [UnitDefNames["cormist"].id] = true,
                             [UnitDefNames["armmerl"].id] = true,
                             [UnitDefNames["corban"].id] = true,
        },
    },
    nanobooster = {     -- >> Core Informer Resurrect (Per Unit)
        id = "nanobooster",
        UpgradeCmdDesc = {
            id      = CMD_UPG_NANOBOOSTER,
            name    = 'Upg Nanobooster',
            action  = 'nanoboosterupgrade',
            cursor  = 'Morph',
            type    = CMDTYPE.ICON,
            tooltip = 'Nanobooster upgrade: build speed increased by 140% [per unit]\n'..
                    GreenStr..'time:6\n'..CyanStr..'metal: 300\n'..YellowStr..'energy: 1880',
            texture = 'luaui/images/upgrades/technanobooster.dds',
            onlyTexture = true,
            showUnique = false, --required by gui_chili_buildordermenu to show button as 'upgrading'
        },
        prereq = "Tech",
        metalCost = 300,
        energyCost = 1880,
        upgradeTime = 6 * 15,--4 * 30, --10 seconds, in frames
        type = "perunit",
        buttonToUnlock = nil,
        buttonToUnlockTooltip = "",
        upgradableDefIDs = { [UnitDefNames["armlab"].id] = true,
                             [UnitDefNames["armvp"].id] = true,
                             [UnitDefNames["armap"].id] = true,
                             [UnitDefNames["armsy"].id] = true,
                             [UnitDefNames["armalab"].id] = true,
                             [UnitDefNames["armavp"].id] = true,
                             [UnitDefNames["armaap"].id] = true,
                             [UnitDefNames["armasy"].id] = true,
                             [UnitDefNames["corlab"].id] = true,
                             [UnitDefNames["corvp"].id] = true,
                             [UnitDefNames["corap"].id] = true,
                             [UnitDefNames["corsy"].id] = true,
                             [UnitDefNames["coralab"].id] = true,
                             [UnitDefNames["coravp"].id] = true,
                             [UnitDefNames["coraap"].id] = true,
                             [UnitDefNames["corasy"].id] = true,
        },
    },
	techupgrade = {     -- >> Core Informer Resurrect (Per Unit)
		id = "techupgrade",
		UpgradeCmdDesc = {
			id      = CMD_UPG_TECHUPGRADE,
			name    = 'Advanced Tech Upgrade',
			action  = 'techupgrade',
			cursor  = 'Morph',
			type    = CMDTYPE.ICON,
			tooltip = 'Advanced Tech Upgrade: unlocks advanced units [per unit]\n',
					-- TODO: Must edit tooltip to add this info
					-- ..GreenStr..'time:6\n'..CyanStr..'metal: 300\n'..YellowStr..'energy: 1880',
			texture = 'luaui/images/upgrades/techupgrade.dds',
			onlyTexture = true,
			showUnique = false, --required by gui_chili_buildordermenu to show button as 'upgrading'
		},
		prereq = "AdvancedTech",
		metalCost = 300,		--TODO: Read from morph metalcost
		energyCost = 1880,		--TODO: Read from morph energycost
		upgradeTime = 6 * 15,	--TODO: Read from morph buildtime
		type = "perunit",
		buttonToUnlock = nil, --CMD_TECHUPGRADE,
		buttonToUnlockTooltip = "",
		upgradableDefIDs = { [UnitDefNames["armvp"].id] = true,
							 --[UnitDefNames["armlab"].id] = true,
							 --[UnitDefNames["armap"].id] = true,
							 --[UnitDefNames["armsy"].id] = true,
							 --[UnitDefNames["corlab"].id] = true,
							 --[UnitDefNames["corvp"].id] = true,
							 --[UnitDefNames["corap"].id] = true,
							 --[UnitDefNames["corsy"].id] = true,
		},
	},
}

---- Which units can research what
--GlobalResearchers = {
--    [UnitDefNames["armtech"].id] = {"capture","throttle","booster1","booster2","booster3"},
--    [UnitDefNames["cortech"].id] = {"capture","throttle","booster1","booster2","booster3"},
--    [UnitDefNames["armtech1"].id] = {"capture","throttle","booster1","booster2","booster3"},
--    [UnitDefNames["cortech1"].id] = {"capture","throttle","booster1","booster2","booster3"},
--    [UnitDefNames["armtech2"].id] = {"capture","throttle","booster1","booster2","booster3"},
--    [UnitDefNames["cortech2"].id] = {"capture","throttle","booster1","booster2","booster3"},
--    [UnitDefNames["armtech3"].id] = {"capture","throttle","booster1","booster2","booster3"},
--    [UnitDefNames["cortech3"].id] = {"capture","throttle","booster1","booster2","booster3"},
--    [UnitDefNames["armtech4"].id] = {"capture","throttle","booster1","booster2","booster3"},
--    [UnitDefNames["cortech4"].id] = {"capture","throttle","booster1","booster2","booster3"},
--}
--
---- Which unitDefs are Tech Centers (Global Researchers)
--TechCenterDefIDs = {
--    [UnitDefNames["armtech"].id] = true,
--    [UnitDefNames["armtech1"].id] = true,
--    [UnitDefNames["armtech2"].id] = true,
--    [UnitDefNames["armtech3"].id] = true,
--    [UnitDefNames["armtech4"].id] = true,
--    [UnitDefNames["cortech"].id] = true,
--    [UnitDefNames["cortech1"].id] = true,
--    [UnitDefNames["cortech2"].id] = true,
--    [UnitDefNames["cortech3"].id] = true,
--    [UnitDefNames["cortech4"].id] = true,
--}