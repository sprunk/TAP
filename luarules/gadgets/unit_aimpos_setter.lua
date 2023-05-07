--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  file:    unit_aimpos_midpos_setter.lua
--  brief:   Sets the aim position of defenses, to prevent EMGs to shoot past DTs
--  author:  Breno "MaDDoX" Azevedo
--
--  Copyright (C) 2017.
--  Licensed under the terms of the GNU GPL, v2 or later.
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

-- API Reference:
-- --        Spring.GetUnitPosition ( number unitID, [, boolean midPos [, boolean aimPos ] ] ) -> nil |
--            number bpx, number bpy, number bpz
--            [, number mpx, number mpy, number mpz ]
--            [, number apx, number apy, number apz ]

function gadget:GetInfo()
    return {
        name      = "Unit Aim and Middle Position Setter",
        desc      = "Sets the aim (target) and middle (center for shields) position of units",
        author    = "MaDDoX",
        date      = "Dec, 2017",
        license   = "GNU GPL, v2 or later",
        layer     = 200,
        enabled   = true
    }
end

VFS.Include("gamedata/taptools.lua")

local spSetUnitMidAndAimPos = Spring.SetUnitMidAndAimPos
local vehicleBaseYOffset = 16

local unitsToEdit = { [UnitDefNames.armllt.id] = {apo = {x=0,y=20,z=0}},
                      [UnitDefNames.corllt.id] = {apo = {x=0,y=20,z=0}},
                      [UnitDefNames.armbeamer.id] = {apo = {x=0,y=20,z=0}},
                      [UnitDefNames.corhllt.id] = {apo = {x=0,y=20,z=0}},
                      [UnitDefNames.armamex.id] = {apo = {x=0,y=20,z=0}},
                      [UnitDefNames.corexp.id] = {apo = {x=0,y=20,z=0}},
                      [UnitDefNames.armhlt.id] = {apo = {x=0,y=20,z=0}},
                      [UnitDefNames.corhlt.id] = {apo = {x=0,y=20,z=0}},
                      [UnitDefNames.armdeva.id] = {apo = {x=0,y=20,z=0}},
                      [UnitDefNames.corshred.id] = {apo = {x=0,y=20,z=0}},
                      [UnitDefNames.corrl.id] = {apo = {x=0,y=20,z=0}},
                      [UnitDefNames.armrl.id] = {apo = {x=0,y=20,z=0}},
                      --[UnitDefNames.armflak.id] = 13,
                      [UnitDefNames.corrad.id] = {apo = {x=0,y=15,z=0}},    -- Model bugfix
                      [UnitDefNames.armcir.id] = {apo = {x=0,y=20,z=0}},
                      [UnitDefNames.corerad.id] = {apo = {x=0,y=20,z=0}},
                      [UnitDefNames.armmercury.id] = {apo = {x=0,y=20,z=0}},
                      [UnitDefNames.corscreamer.id] = {apo = {x=0,y=20,z=0}},
                      [UnitDefNames.armoutpost.id] = {apo = {x=0,y=20,z=0}}, [UnitDefNames.armoutpost2.id] = {apo = {x=0,y=13,z=0}}, [UnitDefNames.armoutpost3.id] = {apo = {x=0,y=15,z=0}}, [UnitDefNames.armoutpost4.id] = {apo = {x=0,y=15,z=0}},
                      [UnitDefNames.coroutpost.id] = {apo = {x=0,y=20,z=0}}, [UnitDefNames.coroutpost2.id] = {apo = {x=0,y=13,z=0}}, [UnitDefNames.coroutpost3.id] = {apo = {x=0,y=15,z=0}}, [UnitDefNames.coroutpost4.id] = {apo = {x=0,y=15,z=0}},
                      [UnitDefNames.armtech.id] = {apo = {x=0,y=20,z=0}}, [UnitDefNames.armtech1.id] = {apo = {x=0,y=13,z=0}}, [UnitDefNames.armtech2.id] = {apo = {x=0,y=13,z=0}}, [UnitDefNames.armtech3.id] = {apo = {x=0,y=15,z=0}}, [UnitDefNames.armtech4.id] = {apo = {x=0,y=15,z=0}},
                      [UnitDefNames.cortech.id] = {apo = {x=0,y=20,z=0}}, [UnitDefNames.armtech1.id] = {apo = {x=0,y=13,z=0}}, [UnitDefNames.cortech2.id] = {apo = {x=0,y=13,z=0}}, [UnitDefNames.cortech3.id] = {apo = {x=0,y=15,z=0}}, [UnitDefNames.cortech4.id] = {apo = {x=0,y=15,z=0}},
                      [UnitDefNames.armgmm.id] = {apo = {x=0,y=20,z=0}}, --Prude
                      --- Model middle position offset fixes
                      --[UnitDefNames.armflash.id] = {bpo = {x=0,y=0,z=0}},
                      --[UnitDefNames.armpw.id] = {bpo = {x=0,y=15,z=0}},
                      --[UnitDefNames.corak.id] = {bpo = {x=0,y=15,z=0}},
}

--SYNCED
if (gadgetHandler:IsSyncedCode()) then

    function gadget:Initialize()
        -- Add aim offset to starting unit, if needed
    end

    local function isVehicle(unitDefID)
        local unitDef = UnitDefs[unitDefID]
        return unitDef.customParams and unitDef.customParams.tedclass == "vehicle"
    end

    -- When a unit is completed
    function gadget:UnitFinished(unitID, unitDefID, teamID)
        --if type(unitsToEdit[unitDefID]) == nil then
        --    return end

        --local modelradius = (UnitDefs[unitDefID]).customParams.modelradius
        --if modelradius then
        --    Spring.Echo("Found modelradius")
        --    spSetUnitRadiusAndHeight(unitID, 0.1,0.1) --, modelradius) --, mr.height
        --end
        -- Check if unitDefID is in the unitsToEdit table
        local bpx, bpy, bpz, mpx, mpy, mpz, apx, apy, apz = Spring.GetUnitPosition (unitID, true, true) --current base, middle, aim positions
        --Spring.Echo("Created unit positions: ".. bpy, mpx, mpy, mpz, apx, apz.." new Y: "..bpy+tonumber(unitsToEdit[unitDefID]))

        local apo = { x = 0, y = 0, z = 0}
        local mpo = { x = 0, y = 0, z = 0}

        local applyOffset

        if isVehicle(unitDefID) then
            apo.y = apo.y + vehicleBaseYOffset
            applyOffset = true
        end

        if unitsToEdit[unitDefID] and istable(unitsToEdit[unitDefID]) then

            local unitPosOffsets = unitsToEdit[unitDefID]

            if istable(unitPosOffsets.apo) then
                apo = { x = unitPosOffsets.apo.x or 0, y = unitPosOffsets.apo.y or 0, z = unitPosOffsets.apo.z or 0, }
            end
            if istable(unitPosOffsets.mpo) then
                mpo = { x = unitPosOffsets.mpo.x or 0, y = unitPosOffsets.mpo.y or 0, z = unitPosOffsets.mpo.z or 0, }
            end
            applyOffset = true
        end

        --Spring.SetUnitMidAndAimPos (number unitID, number mpX, number mpY, number mpZ, number apX, number apY, number apZ [, bool relative ] )
        --mpx, mpy, mpz: New middle position of unit
        --apx, apy, apz: New position that enemies aim at on this unit
        --relative: Are the new coordinates relative to world or unit coordinates?
        if applyOffset then
            spSetUnitMidAndAimPos(unitID,
                    mpx+tonumber(mpo.x),
                    mpy+tonumber(mpo.y),
                    mpz+tonumber(mpo.z), --was: mpx, mpy, bpz
                    bpx+tonumber(apo.x),
                    bpy+tonumber(apo.y), --bpy, since offset is from base
                    bpz+tonumber(apo.z), false)
        end
    end

else -- UNSYNCED

--    -- Called at the moment the unit is created (in production/nanoframe)
--    function gadget:UnitCreated(unitID, unitDefID, teamID, builderID)
--        --Spring.Echo(" unit Def ID: " .. unitDefID)
--        local unitDef = UnitDefs[unitDefID]
--        -- Only mobile units can't be assisted
--        --Spring.Echo((unitDef.name or " null ").. " is building? " ..tostring(unitDef.isBuilding) or " null ")
--        if unitDef.isBuilding == false then
--            unitsBeingBuilt[unitID] = unitDefID
--        end
--    end
--
--    -- When a unit is completed
--    function gadget:UnitFinished(unitID, unitDefID, teamID)
--        unitsBeingBuilt[unitID] = null
--    end

end