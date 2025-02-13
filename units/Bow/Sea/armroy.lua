return {
	armroy = {
		activatewhenbuilt = true,
		buildangle = 16384,
		buildcostenergy = 4400,
		buildcostmetal = 880,
		buildpic = "ARMROY.DDS",
		buildtime = 10200,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON NOTSUB SHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 -10 -2",
		collisionvolumescales = "35 35 77",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Destroyer",
		energymake = 2,
		energyuse = 2,
		explodeas = "mediumExplosionGeneric",
		floater = true,
		footprintx = 4,
		footprintz = 4,
		icontype = "sea",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 3720,
		minwaterdepth = 12,
		movementclass = "BOAT44X4",
		name = "Crusader",
		nochasecategory = "VTOL",
		objectname = "Units/Bow/ARMROY",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 500,
		sonardistance = 375,
		waterline = 0,
		--move
		acceleration = 0.032,
		brakerate = 0.055,
		turninplace = true,
		maxvelocity = 1.95,
		turninplaceanglelimit = 140,
		turnrate = 200,
		--end move
		customparams = {
			
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.164245605469 8.02001953204e-06 -0.56591796875",
				collisionvolumescales = "31.5542297363 37.44581604 80.6425476074",
				collisionvolumetype = "Box",
				damage = 1545,
				description = "Crusader Wreckage",
				energy = 0,
				featuredead = "HEAP",
				footprintx = 5,
				footprintz = 5,
				height = 4,
				hitdensity = 100,
				metal = 0.8*558,
				object = "ARMROY_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 2016,
				description = "Crusader Heap",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 0.8*234,
				object = "5X5B",
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
			explosiongenerators = {
				[1] = "custom:barrelshot-small",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
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
				[1] = "sharmmov",
			},
			select = {
				[1] = "sharmsel",
			},
		},
		weapondefs = {
			plasma = {
				accuracy = 256,
				areaofeffect = 32,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-medium",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "Heavy long-range plasma cannon",
				noselfdamage = true,
				proximitypriority = -0.1,
				range = 700,
				reloadtime = 1.875,
				soundhit = "xplomed2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "cannon3",
				targetmoveerror = 0.1,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 325.5,
				damage = {
					bombers = 56,
					default = 240,
					fighters = 56,
					vtol = 56,
					subs = 5,
				},
			},
			depthcharge = {
				areaofeffect = 24,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.75,
				explosiongenerator = "custom:genericshellexplosion-medium-uw",
				flighttime = 3,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "DEPTHCHARGE",
				name = "Depthcharge launcher",
				noselfdamage = true,
				predictboost = 0,
				range = 400,
				reloadtime = 3.5,
				soundhit = "xplodep2",
				soundstart = "torpedo1",
				startvelocity = 80,
				tolerance = 1000,
				tracks = true,
				turnrate = 1.5*4000,
				turret = true,
				waterweapon = true,
				weaponacceleration = 20,
				weapontimer = 3,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 140,
				damage = {
					default = 187,
					subs = 270,
				},
				customparams = {
					bar_model = "cordepthcharge.s3o",
				}
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "PLASMA",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				badtargetcategory = "NOTSUB",
				def = "DEPTHCHARGE",
				-- maindir = "0 -1 0",
				-- maxangledif = 179,
				onlytargetcategory = "CANBEUW",
			},
		},
	},
}
