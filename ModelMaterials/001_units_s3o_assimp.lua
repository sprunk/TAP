local matTemplate = VFS.Include("ModelMaterials/Templates/defaultMaterialTemplate.lua")

local unitsNormalMapTemplate = Spring.Utilities.MergeWithDefault(matTemplate, {
    texUnits  = {
        [0] = "%%UNITDEFID:0",
        [1] = "%%UNITDEFID:1",
        [2] = "%NORMALTEX",
    },
    shaderDefinitions = {
        "#define RENDERING_MODE 0",
        "#define SUNMULT pbrParams[6]",
        "#define EXPOSURE pbrParams[7]",

        "#define SPECULAR_AO",

        "#define ROUGHNESS_AA 1.0",

        "#define ENV_SMPL_NUM " .. tostring(Spring.GetConfigInt("ENV_SMPL_NUM", 64)),
        "#define USE_ENVIRONMENT_DIFFUSE 1",
        "#define USE_ENVIRONMENT_SPECULAR 1",

        "#define TONEMAP(c) CustomTM(c)",
    },
    deferredDefinitions = {
        "#define RENDERING_MODE 1",
        "#define SUNMULT pbrParams[6]",
        "#define EXPOSURE pbrParams[7]",

        "#define SPECULAR_AO",

        "#define ROUGHNESS_AA 1.0",

        "#define ENV_SMPL_NUM " .. tostring(Spring.GetConfigInt("ENV_SMPL_NUM", 64)),
        "#define USE_ENVIRONMENT_DIFFUSE 1",
        "#define USE_ENVIRONMENT_SPECULAR 1",

        "#define TONEMAP(c) CustomTM(c)",
    },
    shadowOptions = {
        health_displace = true,
    },
    shaderOptions = {
        normalmapping = true,
        flashlights = true,
        vertex_ao = true,
        health_displace = true,
        health_texturing = true,
		--normalmap_flip   = true,
    },
    deferredOptions = {
        normalmapping = true,
        flashlights = true,
        vertex_ao = true,
        health_displace = true,
        health_texturing = true,
		--normalmap_flip   = true,
    },
})


----------------------------------------------

local GL_FLOAT = 0x1406
local GL_INT = 0x1404
-- args=<objID, matName, lodMatNum, uniformName, uniformType, uniformData>
local mySetMaterialUniform = {
    [false] = Spring.UnitRendering.SetForwardMaterialUniform,
    [true]  = Spring.UnitRendering.SetDeferredMaterialUniform,
}

-- args=<objID, matName, lodMatNum, uniformName>
local myClearMaterialUniform = {
    [false] = Spring.UnitRendering.ClearForwardMaterialUniform,
    [true]  = Spring.UnitRendering.ClearDeferredMaterialUniform,
}

local armTanks = {}
local corTanks = {}
local chickenUnits = {}
local otherUnits = {}

local spGetUnitHealth = Spring.GetUnitHealth

local unitsHealth = {} --cache
local healthArray = {[1] = 0.0}
local unitDefSide = {} -- 1 - arm, 2 - cor, 0 - hell know what
local function SendHealthInfo(unitID, unitDefID, hasStd, hasDef, hasShad)
    local h, mh = spGetUnitHealth(unitID)
    if h and mh then

        h = math.max(h, 0)
        mh = math.max(mh, 0.01)

        if not unitDefSide[unitDefID] then
            local facName = string.sub(UnitDefs[unitDefID].name, 1, 3)
            if facName == "arm" then
                unitDefSide[unitDefID] = 1
            elseif facname == "cor" then
                unitDefSide[unitDefID] = 2
            else
                unitDefSide[unitDefID] = 0
            end
        end

        if not unitsHealth[unitID] then
            unitsHealth[unitID] = h / mh
        elseif (h / mh - unitsHealth[unitID]) >= 0.02 then --consider the change of 2% significant. Health is increasing
            unitsHealth[unitID] = h / mh
        elseif (unitsHealth[unitID] - h / mh) >= 0.0625 then --health is decreasing. Quantize by 6.25%.
            unitsHealth[unitID] = h / mh
        end

        local healthMixMult = 0.80
        -- if unitDefSide[unitDefID] == 1 then --arm
        -- 	healthMixMult = 0.90
        -- elseif unitDefSide[unitDefID] == 2 then --cor
        -- 	healthMixMult = 0.90
        -- end

        healthArray[1] = healthMixMult * (1.0 - unitsHealth[unitID]) --invert so it can be used as mix() easier
        --Spring.Echo("SendHealthInfo", unitID, healthArray[1])
        if hasStd then
            mySetMaterialUniform[false](unitID, "opaque", 3, "floatOptions[0]", GL_FLOAT, healthArray)
        end
        if hasDef then
            mySetMaterialUniform[true ](unitID, "opaque", 3, "floatOptions[0]", GL_FLOAT, healthArray)
        end
        if hasShad then
            mySetMaterialUniform[false](unitID, "shadow", 3, "floatOptions[0]", GL_FLOAT, healthArray)
        end
    end
end

local healthMod = {} --cache
local vertDisp = {} --cache
local vdhmArray = {[1] = 0.0, [2] = 0.0}
local function SendVertDispAndHelthMod(unitID, unitDefID, hasStd, hasDef, hasShad)
    -- fill caches, if empty
    if not healthMod[unitDefID] then
        local udefCM = UnitDefs[unitDefID].customParams
        healthMod[unitDefID] = tonumber(udefCM.healthlookmod) or 0
    end

    if not vertDisp[unitDefID] then
        local udefCM = UnitDefs[unitDefID].customParams
        vertDisp[unitDefID] = tonumber(udefCM.vertdisp) or 0
    end

    if vertDisp[unitDefID] > 0 or healthMod[unitDefID] > 0 then
        vdhmArray[1] = healthMod[unitDefID]
        vdhmArray[2] = vertDisp[unitDefID]
        if hasStd then
            mySetMaterialUniform[false](unitID, "opaque", 3, "floatOptions[1]", GL_FLOAT, vdhmArray)
        end
        if hasDef then
            mySetMaterialUniform[true ](unitID, "opaque", 3, "floatOptions[1]", GL_FLOAT, vdhmArray)
        end
        if hasShad then
            mySetMaterialUniform[false](unitID, "shadow", 3, "floatOptions[1]", GL_FLOAT, vdhmArray)
        end
    end
end

local uidArray = {[1] = 0}
local function SendUnitID(unitID, hasStd, hasDef, hasShad)
    uidArray[1] = unitID
    if hasStd then
        mySetMaterialUniform[false](unitID, "opaque", 3, "intOptions[0]", GL_INT, uidArray)
    end
    if hasDef then
        mySetMaterialUniform[true ](unitID, "opaque", 3, "intOptions[0]", GL_INT, uidArray)
    end
    if hasShad then
        mySetMaterialUniform[false](unitID, "shadow", 3, "intOptions[0]", GL_INT, uidArray)
    end
end

local spGetUnitVelocity = Spring.GetUnitVelocity
local spGetUnitDirection = Spring.GetUnitDirection
local floor = math.floor

local threadSpeeds = {} --cache
local threadsArray = {[1] = 0.0}
local function SendTracksOffset(unitID, hasStd, hasDef, hasShad)
    if not threadSpeeds[unitID] then
        threadSpeeds[unitID] = 0.0
    end

    local usx, usy, usz, speed = spGetUnitVelocity(unitID)
    if speed > 0.05 then
        speed = floor(4 * (speed * 1.5)) / 4 --quantize speed by 0.25 => floor(4 * speed + 0.5) / 4
    else
        speed = 0
    end

    local udx, udy, udz = spGetUnitDirection(unitID)
    if udx > 0 and usx < 0  or  udx < 0 and usx > 0  or  udz > 0 and usz < 0  or  udz < 0 and usz > 0 then
        speed = -speed
    end

    if threadSpeeds[unitID] ~= speed then
        threadSpeeds[unitID] = speed
        threadsArray[1] = speed
        if hasStd then
            mySetMaterialUniform[false](unitID, "opaque", 3, "floatOptions[3]", GL_FLOAT, threadsArray)
        end
        if hasDef then
            mySetMaterialUniform[true ](unitID, "opaque", 3, "floatOptions[3]", GL_FLOAT, threadsArray)
        end
        --[[
        -- tank tracks usually don't contribute much to shadows look
        if hasShad then
            mySetMaterialUniform[false](unitID, "shadow", 3, "floatOptions[3]", GL_FLOAT, threadsArray)
        end
        ]]--
    end
end

local function UnitCreated(unitsList, unitID, unitDefID, mat)
    unitsList[unitID] = unitDefID

    local hasStd, hasDef, hasShad = mat.hasStandardShader, mat.hasDeferredShader, mat.hasShadowShader

    SendUnitID(unitID, hasStd, hasDef, hasShad)
    SendVertDispAndHelthMod(unitID, unitDefID, hasStd, hasDef, hasShad)
    SendHealthInfo(unitID, unitDefID, hasStd, hasDef, hasShad)
end

local function UnitDestroyed(unitsList, unitID, unitDefID, mat)
    unitsList[unitID] = nil
end

local function GameFrame(isTank, unitsList, gf, mat)
    local hasStd, hasDef, hasShad = mat.hasStandardShader, mat.hasDeferredShader, mat.hasShadowShader
    local gfRem = gf % 10
    for unitID, unitDefID in pairs(unitsList) do
        if gfRem == unitID % 10 then
            if isTank then
                SendTracksOffset(unitID, hasStd, hasDef, hasShad)
            end
            SendHealthInfo(unitID, unitDefID, hasStd, hasDef, hasShad)
        end
    end
end

local function UnitDamaged(unitID, unitDefID, mat)
    local hasStd, hasDef, hasShad = mat.hasStandardShader, mat.hasDeferredShader, mat.hasShadowShader
    SendHealthInfo(unitID, unitDefID, hasStd, hasDef, hasShad)
end

---------------------------------------------------


local materials = {
    unitsNormalMapArmTanks = Spring.Utilities.MergeWithDefault(unitsNormalMapTemplate, {
        texUnits  = {
            [3] = "%TEXW1",
            [4] = "%TEXW2",
            [5] = "%NORMALTEX2",
        },
        shaderOptions = {
            threads_arm = true,
        },
        deferredOptions = {
            threads_arm = true,
            materialIndex = 1,
        },
        UnitCreated = function (unitID, unitDefID, mat) UnitCreated(armTanks, unitID, unitDefID, mat) end,
        UnitDestroyed = function (unitID, unitDefID) UnitDestroyed(armTanks, unitID, unitDefID) end,

        GameFrame = function (gf, mat) GameFrame(true, armTanks, gf, mat) end,

        UnitDamaged = UnitDamaged,
    }),
    unitsNormalMapCorTanks = Spring.Utilities.MergeWithDefault(unitsNormalMapTemplate, {
        texUnits  = {
            [3] = "%TEXW1",
            [4] = "%TEXW2",
            [5] = "%NORMALTEX2",
        },
        shaderOptions = {
            threads_core = true,
        },
        deferredOptions = {
            threads_core = true,
            materialIndex = 2,
        },
        UnitCreated = function (unitID, unitDefID, mat) UnitCreated(corTanks, unitID, unitDefID, mat) end,
        UnitDestroyed = function (unitID, unitDefID) UnitDestroyed(corTanks, unitID, unitDefID) end,

        GameFrame = function (gf, mat) GameFrame(true, corTanks, gf, mat) end,

        UnitDamaged = UnitDamaged,
    }),
    unitsNormalMapOthersArmCor = Spring.Utilities.MergeWithDefault(unitsNormalMapTemplate, {
        texUnits  = {
            [3] = "%TEXW1",
            [4] = "%TEXW2",
            [5] = "%NORMALTEX2",
        },
        shaderOptions = {
        },
        deferredOptions = {
            materialIndex = 3,
        },
        UnitCreated = function (unitID, unitDefID, mat) UnitCreated(otherUnits, unitID, unitDefID, mat) end,
        UnitDestroyed = function (unitID, unitDefID) UnitDestroyed(otherUnits, unitID, unitDefID) end,

        GameFrame = function (gf, mat) GameFrame(false, otherUnits, gf, mat) end,

        UnitDamaged = UnitDamaged,
    }),
    unitsNormalMapOthers = Spring.Utilities.MergeWithDefault(unitsNormalMapTemplate, {
        shaderOptions = {
            normalmapping = true,
            flashlights = false,
            vertex_ao = true,
            health_displace = false,
            health_texturing = false,
        },
        deferredOptions = {
            normalmapping = true,
            flashlights = false,
            vertex_ao = true,
            health_displace = false,
            health_texturing = false,
            materialIndex = 4,
        },

        -- are these below required?
        UnitCreated = function (unitID, unitDefID, mat) UnitCreated(otherUnits, unitID, unitDefID, mat) end,
        UnitDestroyed = function (unitID, unitDefID) UnitDestroyed(otherUnits, unitID, unitDefID) end,

        --GameFrame = function (gf, mat) GameFrame(false, otherUnits, gf, mat) end,

        --UnitDamaged = UnitDamaged,
    }),
    unitsNormalMapChickens = Spring.Utilities.MergeWithDefault(unitsNormalMapTemplate, {
        shaderOptions = {
            normalmapping = true,
            flashlights = false,
            vertex_ao = true,
            health_displace = true,
            health_texturing = false,
            health_texchicks = true,
            treewind = true,
        },
        deferredOptions = {
            normalmapping = true,
            flashlights = false,
            vertex_ao = true,
            health_displace = true,
            health_texturing = false,
            health_texchicks = true,
            treewind = true,
            materialIndex = 4,
        },
        shadowOptions = {
            treewind = true,
        },

        -- are these below required?
        UnitCreated = function (unitID, unitDefID, mat) UnitCreated(chickenUnits, unitID, unitDefID, mat) end,
        UnitDestroyed = function (unitID, unitDefID) UnitDestroyed(chickenUnits, unitID, unitDefID) end,

        GameFrame = function (gf, mat) GameFrame(false, chickenUnits, gf, mat) end,

        UnitDamaged = UnitDamaged,
    }),
}


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local cusUnitMaterials = GG.CUS.unitMaterialDefs
local unitMaterials = {}

--[[
local unitAtlases = {
	["arm"] = {
		"unittextures/Arm_color.dds",
		"unittextures/Arm_other.dds",
		"unittextures/Arm_normal.dds",
	},
	["cor"] = {
		"unittextures/cor_color.dds",
		"unittextures/cor_other.dds",
		"unittextures/cor_normal.dds",
	},
}
]]--

local wreckAtlases = {
    ["arm"] = {
        "unittextures/tap_wreck_1.dds", --bow_wreck_color.dds",
        "unittextures/tap_wreck_3.dds", --bow_wreck_other.dds",
        "unittextures/tap_wreck_normal.png", --bow_wreck_normal.dds",
    },
    ["cor"] = {
        "unittextures/tap_wreck_2.dds", --kern_wreck_color.dds",
        "unittextures/tap_wreck_3.dds", --bow_wreck_other.dds",
        "unittextures/tap_wreck_normal.png", --bow_wreck_normal.dds",
    },
}

local blankNormal = "unittextures/blank_normal.dds"

for id = 1, #UnitDefs do
    local udef = UnitDefs[id]

    if not cusUnitMaterials[id] and udef.modeltype == "s3o" then

        local udefCM = udef.customParams
        local lm = tonumber(udefCM.lumamult) or 1
        local scvd = tonumber(udefCM.scavvertdisp) or 0
        local hasTreads = udefCM.hastreads or true --TODO: Temp, for tests

        local udefName = udef.name or ""
        local facName = string.sub(udefName, 1, 3)

        local normalTex = udefCM.normaltex or blankNormal --assume all units have normal maps

        local wreckAtlas = wreckAtlases[facName]

        --        if udef.modCategories["tank"] then
        if hasTreads then
            if facName == "arm" then
                unitMaterials[id] = {"unitsNormalMapArmTanks", NORMALTEX = normalTex, TEXW1 = wreckAtlas[1], TEXW2 = wreckAtlas[2], NORMALTEX2 = wreckAtlas[3]}
            elseif facName == "cor" then
                unitMaterials[id] = {"unitsNormalMapCorTanks", NORMALTEX = normalTex, TEXW1 = wreckAtlas[1], TEXW2 = wreckAtlas[2], NORMALTEX2 = wreckAtlas[3]}
            end
        else
            if wreckAtlas then
                unitMaterials[id] = {"unitsNormalMapOthersArmCor", NORMALTEX = normalTex, TEXW1 = wreckAtlas[1], TEXW2 = wreckAtlas[2], NORMALTEX2 = wreckAtlas[3]}
            else
                if facName == "chi" then
                    unitMaterials[id] = {"unitsNormalMapChickens", NORMALTEX = normalTex}
                else
                    unitMaterials[id] = {"unitsNormalMapOthers", NORMALTEX = normalTex}
                end
            end
        end
        --if unitMaterials[id] then
        --    Spring.Echo("unit: "..udef.name.." | material: "..tostring(unitMaterials[id][1])) end
    end
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

return materials, unitMaterials

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
