return {
	corafus = {
		acceleration = 0,
		brakerate = 0,
		buildangle = 4096,
		buildcostenergy = 47000,
		buildcostmetal = 9700,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 9,
		buildinggrounddecalsizey = 9,
		buildinggrounddecaltype = "corafus_aoplane.dds",
		buildpic = "CORAFUS.DDS",
		buildtime = 329243,
		canrepeat = false,
		category = "ALL NOTSUB NOWEAPON NOTAIR SURFACE",
		collisionvolumeoffsets = "0 -1 0",
		collisionvolumescales = "84 95 84",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		damagemodifier = 0.95,
		description = "Enhanced Energy Output",
		energymake = 3000,
		energystorage = 9000,
		explodeas = "advancedFusionExplosion",
		footprintx = 6,
		footprintz = 6,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 8500,
		maxslope = 13,
		maxwaterdepth = 0,
		name = "Advanced Fusion Reactor",
		objectname = "Units/Kern/CORAFUS",
		seismicsignature = 0,
		selfdestructas = "advancedFusionExplosionSelfd",
		sightdistance = 273,
		usebuildinggrounddecal = true,
		yardmap = "oooooooooooooooooooooooooooooooooooo",
		customparams = {
			techlevel = 2,
			removewait = true,
			removestop = true,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-5.1672668457 -0.194635522461 -0.799919128418",
				collisionvolumescales = "114.264892578 89.6709289551 97.8311309814",
				collisionvolumetype = "Box",
				damage = 17100,
				description = "Advanced Fusion Reactor Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 5,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 6440,
				object = "CORAFUS_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 8550,
				description = "Advanced Fusion Reactor Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 5,
				footprintz = 4,
				height = 4,
				hitdensity = 100,
				metal = 2576,
				object = "4X4A",
                collisionvolumescales = "85.0 14.0 6.0",
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
				"deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "fusion2",
			},
		},
	},
}
