return {
	armasy = {
		acceleration = 0,
		brakerate = 0,
		buildcostenergy = 9700,
		buildcostmetal = 3200,
		builder = true,
		shownanospray = false,
		buildpic = "ARMASY.DDS",
		buildtime = 15972,
		canmove = true,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 -9 -2",
		collisionvolumescales = "180 60 176",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		description = "Produces Level 2 Ships",
		energystorage = 200,
		explodeas = "largeBuildingexplosiongeneric",
		footprintx = 12,
		footprintz = 12,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 5415,
		metalstorage = 200,
		minwaterdepth = 30,
		name = "Advanced Shipyard",
		objectname = "Units/Bow/ARMASY",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 299,
		terraformspeed = 1000,
		waterline = 26,
		workertime = 300,
		yardmap = "wCCCCCCCCCCwCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCwCCCCCCCCCCw",
		buildoptions = {
			"armacsub",
			"armmls",		
			"armcrus",		
			"armsubk",		
			"armaas",	
			"armsjam",
			"armcarry",			
			"armbats",
			"armmship",	
			"armepoch",
			-- "armanac",
			-- "armserp",
			-- "armlun",
			-- "armmh",
			-- "armepoch",
			-- "armthovr",

		},
		customparams = {
			bar_collisionvolumescales = "160 60 160",
			bar_waterline = 1.5,
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0 -9 -2",
				collisionvolumescales = "180 60 176",
				collisionvolumetype = "Box",
				damage = 2707,
				description = "Advanced Shipyard Wreckage",
				energy = 0,
				footprintx = 12,
				footprintz = 12,
				height = 4,
				hitdensity = 100,
				metal = 2232,
				object = "ARMASY_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			unitcomplete = "untdone",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "pshpactv",
			},
		},
	},
}
