return {
	corlab = {
		acceleration = 0,
		brakerate = 0,
		buildangle = 1024,
		buildcostenergy = 1200,
		buildcostmetal = 650,
		builder = true,
		shownanospray = false,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 9,
		buildinggrounddecalsizey = 9,
		buildinggrounddecaltype = "corlab_aoplane.dds",
		buildpic = "CORLAB.DDS",
		buildtime = 6500,
		canmove = true,
		category = "ALL NOTLAND NOWEAPON NOTSUB NOTSHIP NOTAIR SURFACE",
		collisionvolumescales = "88 28 88",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		description = "Produces Level 1 Kbots",
		energystorage = 100,
		explodeas = "largeBuildingexplosiongeneric",
		footprintx = 6,
		footprintz = 6,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 2600,
		maxslope = 15,
		maxwaterdepth = 0,
		metalstorage = 100,
		name = "Kbot Lab",
		objectname = "Units/Kern/CORLAB",
		radardistance = 50,
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 290,
		terraformspeed = 500,
		usebuildinggrounddecal = true,
		workertime = 100,
		yardmap = "occccooccccooccccooccccooccccoocccco",
		buildoptions = {
			[1] = "corck",
			[2] = "corak",
			[3] = "cornecro",
			[4] = "corstorm",
			[5] = "corthud",
			[6] = "corcrash",
		},
		customparams = {
			bar_buildinggrounddecalsizex = 5.85,
			bar_buildinggrounddecalsizey = 5.85,
			bar_collisionvolumeoffsets = "4 0 2",
			bar_collisionvolumescales = "93 92 87",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "88 28 88",
				collisionvolumetype = "Box",
				damage = 1560,
				description = "Kbot Lab Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 6,
				footprintz = 6,
				height = 20,
				hitdensity = 100,
				metal = 442,
				object = "CORLAB_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 780,
				description = "Kbot Lab Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 6,
				footprintz = 6,
				height = 4,
				hitdensity = 100,
				metal = 177,
				object = "6X6B",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			 pieceExplosionGenerators = { 
 				"deathceg3",
 				"deathceg4",
 			}, 
			explosiongenerators = {
				[1] = "custom:WhiteLight",
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
				[1] = "plabactv",
			},
		},
	},
}
