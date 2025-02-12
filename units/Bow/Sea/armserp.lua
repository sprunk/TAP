return {
	armserp = {
		activatewhenbuilt = true,
		buildcostenergy = 12000,
		buildcostmetal = 1700,
		buildpic = "ARMSERP.DDS",
		buildtime = 0.75 * 1.5 * 0.8*25300,
		canmove = true,
		category = "CANBEUW ALL WEAPON NOTAIR SURFACE",
		collisionvolumeoffsets = "0 -2 0",
		collisionvolumescales = "45 19 57",
		collisionvolumetype = "box",
		corpse = "DEAD",
		description = "Battle Submarine",
		energymake = 15,
		energyuse = 15,
		explodeas = "mediumExplosionGeneric-uw",
		footprintx = 3,
		footprintz = 3,
		icontype = "sea",
		idleautoheal = 15,
		idletime = 900,
		maxdamage = 2190,
		minwaterdepth = 20,
		movementclass = "UBOAT33X3",
		name = "Serpent",
		nochasecategory = "VTOL",
		objectname = "Units/Bow/ARMSERP",
		script = "armserp_lus.lua",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd-uw",
		sightdistance = 468,
		sonardistance = 550,
		upright = true,
		waterline = 45,
				--move
		brakerate =  0.105,
		acceleration = 0.035,
		maxvelocity = 2.3,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 240,	
		--end move
		customparams = {
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "6.17767333984 -3.80371093733e-06 -10.6119995117",
				collisionvolumescales = "42.614654541 20.1074523926 56.7760009766",
				collisionvolumetype = "Box",
				damage = 2100,
				description = "Serpent Wreckage",
				energy = 0.8*0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 6,
				footprintz = 6,
				height = 10,
				hitdensity = 100,
				metal = 0.8*1332,
				object = "ARMSERP_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 1050,
				description = "Serpent Heap",
				energy = 0.8*0,
				featurereclamate = "SMUDGE01",
				footprintx = 6,
				footprintz = 6,
				height = 4,
				hitdensity = 100,
				metal = 0.8*513,
				object = "3X3F",
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
				[1] = "suarmmov",
			},
			select = {
				[1] = "suarmsel",
			},
		},
		weapondefs = {
			armserp_weapon = {
				areaofeffect = 16,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-large-uw",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "advtorpedo",
				name = "Heavy guided torpedo launcher",
				noselfdamage = true,
				range = 690,
				reloadtime = 1.5,
				soundhit = "xplodep1",
				soundstart = "torpedo1",
				startvelocity = 150,
				tolerance = 8000,
				tracks = true,
				turnrate = 1750,
				turret = true,
				waterweapon = true,
				weaponacceleration = 25,
				weapontimer = 3,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 220,
				damage = {
					default = 500,
					subs = 250,
				},
				customparams = {
					bar_model = "torpedo.s3o",
				}
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "HOVER NOTSHIP",
				def = "ARMSERP_WEAPON",
				maindir = "0 0 1",
				maxangledif = 75,
			},
		},
	},
}
