--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function widget:GetInfo()
    return {
        name      = "Unit - Auto-set Fly Mode",
        desc      = "Set created air plants, fighters, drones & bombers to Fly mode",
        author    = "Floris (original unit_air_allways_fly widget by [teh]Decay)",
        date      = "july 2017",
        license   = "GNU GPL, v2 or later",
        version   = 1,
        layer     = 5,
        enabled   = true  --  loaded by default?
    }
end

-- this widget is a variant of unit_air_allways_fly: project page on github: https://github.com/jamerlan/unit_air_allways_fly

--------------------------------------------------------------------------------
local spGiveOrderToUnit = Spring.GiveOrderToUnit
local spGetMyTeamId = Spring.GetMyTeamID
local spGetTeamUnits = Spring.GetTeamUnits
local spGetUnitDefID = Spring.GetUnitDefID
local cmdFly = 145
local cmdAirRepairLevel = CMD.AUTOREPAIRLEVEL
--------------------------------------------------------------------------------

local function switchToFlyMode(unitID, unitDefID)
    if unitDefID == UnitDefNames["armfig"].id  or unitDefID == UnitDefNames["armhawk"].id or --or unitDefID == UnitDefNames["armsfig"].id
       unitDefID == UnitDefNames["corveng"].id or unitDefID == UnitDefNames["corvamp"].id or --or unitDefID == UnitDefNames["corsfig"].id
       unitDefID == UnitDefNames["corbw"].id or unitDefID == UnitDefNames["armkam"].id or
       unitDefID == UnitDefNames["armbrawl"].id or unitDefID == UnitDefNames["corape"].id or
       unitDefID == UnitDefNames["corshad"].id or unitDefID == UnitDefNames["armthund"].id or
       unitDefID == UnitDefNames["corhurc"].id or unitDefID == UnitDefNames["armpnix"].id or
       unitDefID == UnitDefNames["armca"].id or unitDefID == UnitDefNames["corca"].id or
       unitDefID == UnitDefNames["armaca"].id or unitDefID == UnitDefNames["coraca"].id or
       unitDefID == UnitDefNames["armliche"].id or unitDefID == UnitDefNames["corstil"].id or

       unitDefID == UnitDefNames["armatlas"].id or unitDefID == UnitDefNames["armdfly"].id or
       unitDefID == UnitDefNames["corvalk"].id or unitDefID == UnitDefNames["corseah"].id or

       unitDefID == UnitDefNames["armap"].id or unitDefID == UnitDefNames["corap"].id or
       unitDefID == UnitDefNames["armaap"].id or unitDefID == UnitDefNames["coraap"].id
    then
        spGiveOrderToUnit(unitID, cmdFly, { 0 }, {})
        spGiveOrderToUnit(unitID, cmdAirRepairLevel, { 0 }, {})
    end
end

function widget:UnitCreated(unitID, unitDefID, teamID, builderID)
    if(teamID == spGetMyTeamId()) then
        switchToFlyMode(unitID, unitDefID)
    end
end

function widget:UnitTaken(unitID, unitDefID, oldTeam, teamID)
    widget:UnitCreated(unitID, unitDefID, teamID)
end


function widget:UnitGiven(unitID, unitDefID, teamID, oldTeam)
    widget:UnitCreated(unitID, unitDefID, teamID)
end


function widget:PlayerChanged(playerID)
    if Spring.GetSpectatingState() then
        widgetHandler:RemoveWidget(self)
    end
end

function widget:GameStart()
    widget:PlayerChanged()
end

function widget:Initialize()
    if Spring.IsReplay() or Spring.GetGameFrame() > 0 then
        widget:PlayerChanged()
    end
    local _, _, _, teamId = Spring.GetPlayerInfo(Spring.GetMyPlayerID())
    for _, unitID in ipairs(spGetTeamUnits(teamId)) do  -- init existing labs
        switchToFlyMode(unitID, spGetUnitDefID(unitID))
    end
end



