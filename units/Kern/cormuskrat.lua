return {
	cormuskrat = {
		acceleration = 0.06,
		brakerate = 0.6996,
		buildcostenergy = 3400,
		buildcostmetal = 170,
		builddistance = 110,
		builder = true,
		shownanospray = false,
		buildpic = "CORMUSKRAT.DDS",
		buildtime = 6864,
		canmove = true,
		category = "ALL TANK NOTSUB  NOWEAPON NOTAIR SURFACE",
		collisionvolumeoffsets = "0 -1 1",
		collisionvolumescales = "22 16 41",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		description = "Amphibious Construction Vehicle",
		energymake = 8,
		energyuse = 8,
		explodeas = "mediumexplosiongeneric-phib",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 995,
		maxslope = 16,
		maxvelocity = 1.26,
		maxwaterdepth = 255,
		metalmake = 0.08,
		metalstorage = 50,
		movementclass = "ATANK3",
		name = "Muskrat",
		objectname = "Units/Kern/CORMUSKRAT",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd-phib",
		sightdistance = 260,
		terraformspeed = 400,
		trackoffset = 8,
		trackstrength = 5,
		tracktype = "StdTank",
		trackwidth = 24,
		turninplace = true,
		turninplaceanglelimit = 60,
		turninplacespeedlimit = 0.9504,
		turnrate = 300,
		workertime = 80,
		buildoptions = {
			"corsolar",
			"coradvsol",
			"corwin",
			"corgeo",
			"cormstor",
			"corestor",
			"cormex",
			"corexp",
			"cormakr",
			"corlab",
			"corvp",
			"corap",
			"corhp",
			"cornanotc",
			"cornanotcplat",
			"coreyes",
			"corrad",
			"cordrag",
			"cormaw",
			"corllt",
			"corhllt",
			"corhlt",
			"corpun",
			"corrl",
			"corerad",
			"cordl",
			"corjamt",
			"corfhp",
			"coramsub",
			"corsy",
			"cortide",
			"coruwmex",
			"corfmkr",
			"coruwms",
			"coruwes",
			
			"corfdrag",
			"corfrad",
			"corgplat",
			"corfhlt",
			"corfrt",
			"corptl",
		},
		customparams = {
			bar_trackoffset = 8,
			bar_trackstrength = 5,
			bar_tracktype = "corwidetracks",
			bar_trackwidth = 24,
			description_long = "The Muskrat is an amphibious construction vehicle, which can travel on land and underwater equally well allowing easy expansion between islands, under rivers and across seas. Its build menu includes some water based units like underwater metal extractors, tidal generators and most importantly the amphibious complex, a lab that includes T2 amphibious tanks and Kbots. As all amphibious units it can easily cross stepper hills unlike regular vehicles. It can be destroyed by torpedoes so avoid submarines, launchers and destroyers. It is wise to use pairs of cons for expansion, so they can heal each other and build defensive structures faster. This makes them immune to light assault units like fleas/jeffys.",
			area_mex_def = "cormex",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-1.3500289917 4.80712890649e-06 3.49253082275",
				collisionvolumescales = "25.27003479 12.0197296143 44.3021697998",
				collisionvolumetype = "Box",
				damage = 697,
				description = "Muskrat Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 105,
				object = "CORMUSKRAT_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 299,
				description = "Muskrat Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 42,
				object = "3X3C",
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
				"deathceg4",
			},
		},
		sounds = {
			build = "nanlath2",
			canceldestruct = "cancel2",
			capture = "capture1",
			repair = "repair2",
			underattack = "warning1",
			working = "reclaim1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "vcormove",
			},
			select = {
				[1] = "vcorsel",
			},
		},
	},
}
