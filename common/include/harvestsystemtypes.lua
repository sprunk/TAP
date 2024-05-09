---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Breno.
--- DateTime: 3/16/2024 10:28 AM
---
local isOreTower = {
					armmstor = true, cormstor = true, armuwadvms = true, coruwadvms = true,
					bowhq = true, bowhq2 = true, bowhq3 = true, bowhq4 = true, bowhq5 = true, bowhq6 = true,
					kernhq = true, kernhq2 = true, kernhq3 = true, kernhq4 = true, kernhq5 = true, kernhq6 = true,
					}
local isHarvester = {	-- uDef.name = Harvest resourcing (eg.: 1 = +1 metal)
						armck = 1, corck = 1, armck2 = 1.5, corck2 = 1.5, armcv = 1.1, corcv = 1.1, armca = 1, corca = 1, armcs = 1, corcs = 1,
						armack = 2.25, corack = 2.25, armacv = 2.5, coracv = 2.5, armaca = 2.1, coraca = 2.1, armacsub = 2.5, coracsub = 2.5,
					}
local chunkTypes = {	["sml"] = {id = UnitDefNames["oresml"].id},   --TODO: add minSpawnDistance, per type
					  	["lrg"] = {id = UnitDefNames["orelrg"].id},
					  	["moho"] = {id = UnitDefNames["oremoho"].id},
					  	["uber"] = {id = UnitDefNames["oreuber"].id}
					}
local sprawlerTypes = {	[UnitDefNames["armmex"].id] = { kind = "sml", multiplier = 1.5 },   --1.125
						[UnitDefNames["armamex"].id] = { kind = "lrg", multiplier = 1.2 },
						[UnitDefNames["armmoho"].id] = { kind = "moho", multiplier = 1.25 },
						[UnitDefNames["armuber"].id] = { kind = "uber", multiplier = 1.3 },

						[UnitDefNames["cormex"].id] = { kind = "sml", multiplier = 1.5 }, --1.125
						[UnitDefNames["corexp"].id] = { kind = "lrg", multiplier = 1.2 },
						[UnitDefNames["cormoho"].id] = { kind = "moho", multiplier = 1.25 },
						[UnitDefNames["coruber"].id] = { kind = "uber", multiplier = 1.3 },
						}

return isOreTower, isHarvester, chunkTypes, sprawlerTypes
