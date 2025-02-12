return {
	armmex = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 8192,
		buildcostenergy = 500,
		buildcostmetal = 50,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 5,
		buildinggrounddecalsizey = 5,
		buildinggrounddecaltype = "armmex_aoplane.dds",
		buildingMask = 0,
		buildpic = "ARMMEX.DDS",
		buildtime = 1800,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "41 26 41",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Extracts Metal",
		explodeas = "tinyBuildingExplosionGeneric",
		extractsmetal = 0,
		footprintx = 3,
		footprintz = 3,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 170,
		maxslope = 30,
		maxwaterdepth = 20,
		metalstorage = 50,
		name = "Metal Extractor",
		objectname = "Units/Bow/ARMMEX",
		onoffable = false,
		seismicsignature = 0,
		selfdestructas = "tinyBuildingExplosionGenericSelfd",
		selfdestructcountdown = 1,
		sightdistance = 273,
		usebuildinggrounddecal = true,
		yardmap = "ooooooooo",
		customparams = {
			bar_collisionvolumescales = "48 80 48",
			cvBuildable = true,
			metal_extractor = 1,
			removewait = true,
			removestop = true,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.510162353516 -0.044793737793 0.21223449707",
				collisionvolumescales = "52.280090332 25.2522125244 52.9224243164",
				collisionvolumetype = "Box",
				damage = 102,
				description = "Metal Extractor Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 33,
				object = "ARMMEX_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 51,
				description = "Metal Extractor Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 13,
				object = "3X3B",
                collisionvolumescales = "55.0 4.0 6.0",
                collisionvolumetype = "cylY",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
			},
		},
		sounds = {
			activate = "mexrun1",
			canceldestruct = "cancel2",
			deactivate = "mexoff1",
			underattack = "warning1",
			working = "mexrun1",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "servmed2",
			},
			select = {
				[1] = "mexon1",
			},
		},
	},
}
