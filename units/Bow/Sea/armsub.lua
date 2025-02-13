return {
	armsub = {
		activatewhenbuilt = true,
		autoheal = 2,
		buildcostenergy = 3500,
		buildcostmetal = 500,
		buildpic = "ARMSUB.DDS",
		buildtime = 6600,
		canmove = true,
		category = "UNDERWATER ALL MOBILE WEAPON NOTLAND NOTAIR",
		collisionvolumeoffsets = "0 -4 0",
		collisionvolumescales = "35 17 50",
		collisionvolumetype = "box",
		corpse = "DEAD",
		explodeas = "smallExplosionGeneric-uw",
		description = "Submarine",
		footprintx = 3,
		footprintz = 3,
		icontype = "sea",
		idleautoheal = 8,
		idletime = 900,
		maxdamage = 635,
		minwaterdepth = 15,
		movementclass = "UBOAT33X3",
		name = "Lurker",
		nochasecategory = "VTOL",
		objectname = "Units/Bow/ARMSUB",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-uw",
		sightdistance = 400,
		sonardistance = 475,
		upright = true,
		waterline = 30,
		--move
		brakerate =  0.105,
		acceleration = 0.035,
		maxvelocity = 2.10,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 320,	
		maxreversevelocity = 2.10*0.40,
		--end move
		customparams = {
			
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "-1.03743743896 -3.82080078154e-06 -0.269828796387",
				collisionvolumescales = "40.4452667236 15.0652923584 47.2016448975",
				collisionvolumetype = "Box",
				damage = 501,
				description = "Lurker Wreckage",
				energy = 0,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 338,
				object = "ARMSUB_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 2016,
				description = "Lurker Heap",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 201,
				object = "3X3A",
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
			torpedo = {
				areaofeffect = 64,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0,
				explosiongenerator = "custom:genericshellexplosion-small-uw",
				flighttime = 3,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "torpedo",
				name = "Light homing torpedo launcher",
				noselfdamage = true,
				predictboost = 0.7,
				range = 500,
				reloadtime = 2.5,
				soundhit = "xplodep1",
				soundstart = "torpedo1",
				startvelocity = 100,
				tolerance = 12000,
				turnrate = 12000,
				turret = false,
				waterweapon = true,
				weaponacceleration = 15,
				weapontimer = 3.25,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 160,
				damage = {
					commanders = 600,
					default = 650,
					subs = 150,
				},
				customparams = {
					bar_model = "torpedo.s3o",
				}
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTSHIP",
				def = "TORPEDO",
				maindir = "0 0 1",
				maxangledif = 110,
				onlytargetcategory = "SHIP",
			},
		},
	},
}
