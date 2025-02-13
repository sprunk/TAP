return {
	armfmkr = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 8192,
		buildcostenergy = 2500,
		buildcostmetal = 1,
		buildpic = "ARMFMKR.DDS",
		buildtime = 2958,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR SURFACE",
		description = "Converts up to 70 energy into 1.1 metal per second",
		explodeas = "largeBuildingExplosionGeneric",
		footprintx = 3,
		footprintz = 3,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 110,
		maxslope = 10,
		minwaterdepth = 11,
		name = "Floating Energy Converter",
		objectname = "Units/Bow/ARMFMKR",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 273,
		waterline = 4,
		yardmap = "wwwwwwwww",
		customparams = {
			removewait = true,
			removestop = true,
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
			},
		},
		sounds = {
			activate = "metlon1",
			canceldestruct = "cancel2",
			deactivate = "metloff1",
			underattack = "warning1",
			working = "metlrun1",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "metlon1",
			},
		},
	},
}
