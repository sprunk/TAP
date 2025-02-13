---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by MaDDo.
--- DateTime: 31-Jul-19 4:55 PM
---
function gadget:GetInfo()
    return {
        name 	= "Upgrade - Global",
        desc	= "Enables global upgrades for units, from tech researchers",
        author	= "MaDDoX",
        date	= "Sept 24th 2019",
        license	= "GNU GPL, v2 or later",
        layer	= -1,
        enabled = true, --true, (WIP)
        -- The only thing this guy does is to award the given tech to the Team and/or unlock a given button.
    }
end

--[[    Full Upgrading Structure:

GlobalUpgrades [made by techcenter]
	=> Multiple upgrades per unit
	=> Provide / may require a team tech
	=> "Consumed" by other gadgets (GUHandler)
		* Morph Speedup (unit_morph.lua)
		* Button-unlock (update from capture)

PerUnitUpgrades [made by unit, local]
	=> One upgrade per unit (max)
	=> May require a team tech
	=> UnitUpgrade Handlers: <rely on the global UnitUpgrades table>
		* Button-unlock
		* Healing Pulse (Aura, increases health)
		* Overclock Pulse (Aura, increases speed + firerate)
		* Motor Hack (Weapon - reduces speed by 40%)
		* Weapon Switcher (disables primary, enables secondary weapon)
]]

VFS.Include("gamedata/taptools.lua")
VFS.Include("luarules/configs/upgradedata_global.lua")

--local spGetUnitDefID        = Spring.GetUnitDefID
--local spGetUnitCmdDescs     = Spring.GetUnitCmdDescs
local spGetUnitTeam         = Spring.GetUnitTeam
local spSetUnitRulesParam   = Spring.SetUnitRulesParam
local spGetGameFrame        = Spring.GetGameFrame
local spUseUnitResource     = Spring.UseUnitResource
local spGetUnitHealth       = Spring.GetUnitHealth

local upgParamName = "upgrade" -- Param Name to be read by unit_healthbars2.lua (lua UI)
local oldFrame = 0

--TechUpgrades = {} -- Auto-completed from UT @ Initialize

local upgradingUnits = {}   -- => { unitID = { upgradeID = "capture", progress = 0, upgData = { UpgradeCmdDesc,.. } }
local upgradedUnits = {}    -- => { unitID = { upgrades = { ["capture"]=true, ... } } | upgradeID
local upgradeLockedUnits = {} --  { [unitID] = { upgradeID = { prereq = "", upgradeButton = cmdID, orgTooltip = "" .. }, ... }
local techCenters = {}      -- => { teamID = { unitID, .. }, .. }
local finishedUpgrades = {} -- => { upgID = true, ... }     | used to block pre-researched upgrades on newly built techCenters

if not gadgetHandler:IsSyncedCode() then
    return end

local function isUpgrading(unitID)
    if not unitID or not upgradingUnits[unitID] then
        return false
    end
    return upgradingUnits[unitID]
end

--- Returns UpgradeID (from GlobalUpgrades) with the related cmdID (eg.: CMD_CAPTURE)
local function getUpgradeID (unitDefID, cmdID)
    --[UnitDefNames["armoutpost"].id] = {"capture","techbooster1"},
    local upgradeList = GlobalResearchers[unitDefID]
    if upgradeList == nil then
        return nil end
    for _, upgradeID in ipairs(upgradeList) do
        local upgData = GlobalUpgrades[upgradeID]
        if upgData and cmdID == upgData.UpgradeCmdDesc.id then
            return upgradeID
        end
    end
    return nil
end

--- StartUpgrade / CancelUpgrade
local function SetUpgrade(unitID, upgradeID, progress, upgData)
    if (upgData == nil) then
        upgradingUnits[unitID] = nil
    else
        upgradingUnits[unitID] = { upgradeID = upgradeID, progress = progress, upgData = upgData, }
    end

    spSetUnitRulesParam(unitID, upgParamName, progress)
end

local function cancelUpgrade(unitID, upgradeID)
    SetUpgrade(unitID, upgradeID, nil, nil)
end

local function tryStartUpgrade(unitID, upgradeID) --, cmdID, unitTeam)
    local upgEntry = GlobalUpgrades[upgradeID]
    if upgEntry == nil then
        return false end

    SetUpgrade(unitID, upgradeID, 0, upgEntry)

    --- Obsolete. Using buildordermenu instead
    --BlockCmdID(unitID, cmdID, cmdDesc.tooltip, "Upgrading")
    --end
    return true
end

function gadget:AllowCommand(unitID,unitDefID,unitTeam,cmdID,cmdParams,cmdOptions)
    -- If unit is not complete, disallow upgrades
    if select(5, spGetUnitHealth(unitID)) < 1 then
        return true
    end
    local upgradeID = getUpgradeID(unitDefID, cmdID)
    if not upgradeID then
        return true
    end
    --TODO: Remove ASAP, obsolete. Button should already be disabled instead
    if upgradedUnits[unitID] and upgradedUnits[unitID][upgradeID] then
        --LocalAlert(unitID, "Upgrade Already researched: "..upgradeID)
        return false
    end

    -- If currently upgrading and right-clicked, cancel upgrade
    if isUpgrading(unitID, upgradeID) then
        if cmdOptions.right == true then
            cancelUpgrade(unitID, upgradeID)
            return true
        end
    else                --- Otherwise, check for requirements
        return tryStartUpgrade(unitID, upgradeID) --, cmdID, unitTeam)
    end
    return true
end

function gadget:Initialize()
    --for _,upgrade in pairs(GlobalUpgrades) do
    --    TechUpgrades[upgrade] = true
    --end
end

function gadget:UnitCreated(unitID, unitDefID, unitTeam)
    local upgradeList = GlobalResearchers[unitDefID]
    if not upgradeList then
        return end

    local function checkPrereqs(unitID, unitTeam, upgradeID, upgData)
        ----Check for requirements and edit tooltip if needed
        local block = not HasTech(upgData.prereq, unitTeam)
        --Spring.Echo("Block? "..tostring(block).." "..upgData.prereq)
        SetCmdIDEnable(unitID, upgData.buttonToUnlock, block, upgData.buttonToUnlockTooltip, "Requires: "..upgradeID.." global upgrade")

        if block then
            if upgradeLockedUnits[unitID] == nil then
                upgradeLockedUnits[unitID] = {}
            end
            upgradeLockedUnits[unitID][upgradeID] = { prereq = upgData.prereq,
                                                      upgradeButton = upgData.UpgradeCmdDesc.id,
                                                      orgTooltip = upgData.UpgradeCmdDesc.tooltip }
        end
    end

    -- Add all upgrade command buttons, disabled/enabled (according to prereqs or research-completed)
    for _, upgradeID in ipairs(upgradeList) do
        local upgData = GlobalUpgrades[upgradeID]
        if upgData then     --- Add Upgrade Button
            local cmdDesc = upgData.UpgradeCmdDesc
            if cmdDesc then
                upgData.buttonToUnlockTooltip = cmdDesc.tooltip end
            AddUpdateCommand(unitID, cmdDesc)
                            --- Block if already researched, or hasn't got the prereqs
            if finishedUpgrades[unitTeam] and finishedUpgrades[unitTeam][upgradeID] then
                BlockCmdID(unitID, upgData.UpgradeCmdDesc.id, upgData.UpgradeCmdDesc.tooltip, "Already Researched.")
            else
                checkPrereqs(unitID, unitTeam, upgradeID, upgData)
            end
        end
    end
end

--- Add completed TechCenters to the techCenters table (used to disable researched upgrade buttons)
function gadget:UnitFinished(unitID, unitDefID, unitTeam)
    if TechCenterDefIDs[unitDefID] then
        if not techCenters[unitTeam] then
            techCenters[unitTeam] = {}
        end
        techCenters[unitTeam][unitID] = true
    end
end

function gadget:UnitDestroyed(unitID, unitDefID , unitTeam)
    upgradedUnits[unitID] = nil     -- TODO: Revoke awarded Tech Center techs.
    upgradingUnits[unitID] = nil
    upgradeLockedUnits[unitID] = nil
    if techCenters[unitTeam] then
        techCenters[unitTeam][unitID] = nil end
end

-- If unit was taken, apply unit-creation check
function gadget:UnitTaken(unitID, unitDefID, oldTeamID, teamID)
    self:UnitCreated(unitID, unitDefID, teamID)
    --if isDone(unitID) then self:UnitFinished(unitID, unitDefID, teamID) end
end

function gadget:UnitGiven(unitID, unitDefID, newTeamID, oldTeamID)
    self:UnitDestroyed(unitID, unitDefID, oldTeamID)
end

-- Upgrade is complete, award related tech to the researcher team
local function finishUpgrade(unitID, upgData, upgID)

    local unitTeam = spGetUnitTeam(unitID)
    if not finishedUpgrades[unitTeam] then
        finishedUpgrades[unitTeam] = {} end
    finishedUpgrades[unitTeam][upgID] = true

    -- Once an unit upgrade is complete we can safely stop watching its prereqs
    for uID, data in pairs (upgradeLockedUnits) do
        if data[uID] and data[uID][upgID] then
            BlockCmdID(uID, upgData.UpgradeCmdDesc.id, upgData.UpgradeCmdDesc.tooltip)
            UnblockCmdID(uID, upgData.buttonToUnlock, upgData.buttonToUnlockTooltip)
            data[uID][upgID] = nil
        end
    end

    -- Once an unit upgrade is complete we can safely stop watching its prereqs
    upgradingUnits[unitID] = nil
    if not upgradedUnits[unitID] then
        upgradedUnits[unitID] = {} end
    upgradedUnits[unitID][upgID] = true

    --- Goes through all global-tech upgraders and block it on them as well
    local function disableUpgradeButtons(unitTeam, upgID)
        if not techCenters[unitTeam] then
            return end
        for unitID in pairs(techCenters[unitTeam]) do
            BlockCmdID(unitID, upgData.UpgradeCmdDesc.id, upgData.UpgradeCmdDesc.tooltip, "Already Researched.")
            --Spring.Echo("Processed: "..uID)
        end
    end

    disableUpgradeButtons(unitTeam, upgID)

    spSetUnitRulesParam(unitID, upgParamName, nil)  -- Used by UI (healthbars2)

    local techToGrant = upgData.techToGrant
    if techToGrant then
        GG.TechGrant(techToGrant, unitTeam, true) end

    if upgData.alertWhenDone then
        LocalAlert(unitID, "Upgrade Finished: ".. upgID)
        --local x,y,z=Spring.GetUnitPosition(unitID)
        Spring.PlaySoundFile("sounds/ui/upgradecomplete.wav",0.2, 'sfx') --,x,y,z,_,_,_,"userinterface")
    end
end

function gadget:GameFrame()
    local frame = spGetGameFrame()
    if (frame <= oldFrame) then
        return end
    oldFrame = frame

    --- Watch all prereq blocked units to see if their prereqs are done/lost, block/unblock accordingly
    for unitID, upgrades in pairs(upgradeLockedUnits) do
        for upgID, data in pairs (upgrades) do
            local hasTech = HasTech(data.prereq, spGetUnitTeam(unitID))
            SetCmdIDEnable(unitID, data.upgradeButton, not hasTech, data.orgTooltip, "Requires: "..data.prereq )
        end
    end

    if not upgradingUnits then    -- If no unit upgrading, get outta here
        return end

    for unitID, data in pairs(upgradingUnits) do
        local progress = data.progress
        local upgData = data.upgData
        if progress ~= nil and upgData ~= nil then
            if spUseUnitResource(unitID, {  ["m"] = upgData.metalCost / upgData.upgradeTime,
                                            ["e"] = upgData.energyCost / upgData.upgradeTime }) then
                progress = progress + 1 / upgData.upgradeTime -- TODO: Add "Morph speedup" bonus maybe?
                upgradingUnits[unitID].progress = progress
                spSetUnitRulesParam(unitID, upgParamName, progress)
                if progress >= 1.0 then
                    finishUpgrade(unitID, upgData, data.upgradeID)
                end
            end
        end
    end
end
