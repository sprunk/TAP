--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  file:    unit_crushenabler.lua
--  brief:   Allow crushing smaller T1 kbot units
--  author:  Breno "MaDDoX" Azevedo
--
--  Copyright (C) 2017.
--  Licensed under the terms of the GNU GPL, v2 or later.
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- https://springrts.com/wiki/Lua_SyncedRead
-- https://springrts.com/wiki/Lua_SyncedCtrl#Unit_Control
-- https://springrts.com/phpbb/viewtopic.php?f=14&t=27288&start=20
-- -- float crushResistance  default: mass New in version 85.0
-- -- How resistant is the unit to being crushed? Any MoveClass with a crushStrength greater than this will crush the unit
-- - IFF this has been enabled via Spring.SetUnitBlocking and the collider impulse exceeds that of the colidee.

--        Spring.GetUnitBlocking ( number unitID ) ->  boolean isBlocking, boolean isSolidObjectCollidable, boolean isProjectileCollidable,
--                              boolean isRaySegmentCollidable, boolean crushable, boolean blockEnemyPushing, boolean blockHeightChanges
--
--      Spring.SetUnitBlocking (number unitID, boolean isBlocking, boolean isSolidObjectCollidable, boolean isProjectileCollidable,
--                              boolean isRaySegmentCollidable, boolean crushable, boolean blockEnemyPushing, boolean blockHeightChanges



function gadget:GetInfo()
    return {
        name      = "Unit Crush Enabler",
        desc      = "Allow crushing some units",
        author    = "MaDDoX",
        date      = "Dec, 2017",
        license   = "GNU GPL, v2 or later",
        layer     = 10,
        enabled   = true,
    }
end

-- TODO: Read from customDefs

--local unitsToEdit = {
--    [UnitDefNames.armpw.id] = false,
--    [UnitDefNames.corak.id] = false,
--    [UnitDefNames.armrock.id] = false,
--    [UnitDefNames.corstorm.id] = false,
--    [UnitDefNames.armham.id] = false,
--    [UnitDefNames.corthud.id] = false,
--    --
--    -- Tanks are crushable by the Goliath, not by the Poison
--    [UnitDefNames.armbull.id] = true,
--    [UnitDefNames.armcroc.id] = true,
--    [UnitDefNames.armlatnk.id] = true,
--    [UnitDefNames.corst.id] = true,
--    [UnitDefNames.armstump.id] = true,
--    [UnitDefNames.corraid.id] = true,
--    [UnitDefNames.correap.id] = true,
--    [UnitDefNames.corseal.id] = true,
--    --
--    -- Walls
--    [UnitDefNames.armdrag.id] = true,
--    [UnitDefNames.cordrag.id] = true,
--}

local exceptionUnits = {
    [UnitDefNames.corgol.id] = true,
}

--SYNCED
if (gadgetHandler:IsSyncedCode()) then

    local function setUnitBlocking(unitID, blockEnemyPushing)
        Spring.SetUnitBlocking (unitID, true, true, true, true, true, blockEnemyPushing, false)
    end

    -- When a unit is completed
    function gadget:UnitFinished(unitID, unitDefID, teamID)

        --local function to_string(val)
        --    if (val == nil) then
        --        return "nil"
        --    else
        --        return tostring(val)
        --    end
        --end

        if exceptionUnits[unitDefID] then
            return end

        local unitDef = UnitDefs[unitDefID]
        if unitDef.customParams and unitDef.customParams.tedclass then
            local tedclass = unitDef.customParams.tedclass
            if tedclass == "bot" then
                --Spring.Echo("Bot found")
                setUnitBlocking(unitID, false)
            elseif tedclass == "vehicle" then
                --Spring.Echo("Vehicle found")
                setUnitBlocking(unitID, true)
            end
        end

    --local isBlocking,isSolidObjectCollidable,isProjectileCollidable,isRaySegmentCollidable,crushable = Spring.GetUnitBlocking (unitID)
--        local isBlocking,p2,p3,p4,crushable = Spring.GetUnitBlocking (unitID)
--        Spring.Echo('CrushEnabler: Made unit '..unitID..' '..to_string(isBlocking)..' #1 '..to_string(p2)..' #2 '
--                ..to_string(p3)..' #3 '..to_string(p4)..' #4 '..to_string(crushable)..' #5')
    end

--else -- UNSYNCED

end