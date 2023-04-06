return {
	armjanus = {
		acceleration = 0.0196,
		brakerate = 0.162,
		buildcostenergy = 2500,
		buildcostmetal = 240,
		buildpic = "ARMJANUS.DDS",
		buildtime = 3545,
		canmove = true,
		category = "ALL TANK WEAPON NOTSUB NOTSHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "25 22 33",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		description = "Twin Medium Rocket Launcher",
		energymake = 0.5,
		energyuse = 0.5,
		explodeas = "mediumExplosionGeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 924,
		maxslope = 10,
		maxvelocity = 1.71,
		maxwaterdepth = 12,
		movementclass = "TANK2",
		name = "Janus",
		nochasecategory = "VTOL",
		objectname = "Units/Bow/ARMJANUS",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 325,
		trackoffset = 3,
		trackstrength = 6,
		tracktype = "StdTank",
		trackwidth = 24,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.29228,
		turnrate = 271,
		customparams = {
			arm_tank = "1",
			description_long = "The Janus is a heavy dual rocket tank. Its slow moving speed and fire rate makes it susceptible to groups of fast moving units like KeeWees, but once it shoots it deals massive AoE damage, which can eliminate virtually all Kbots (except Warriors) in a single blow. Combine with Samsons (rocket trucks) and repairing units to achieve devastating effect on enemy defenses. It is also a perfect unit for destroying Commanders, as only 5 shots is enough to deal lethal damage. It requires some good micro, so focus!",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-1.45095062256 -4.56400614014 0.266441345215",
				collisionvolumescales = "28.8743438721 18.1917877197 33.2305145264",
				collisionvolumetype = "Box",
				damage = 628,
				description = "Janus Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 147,
				object = "ARMJANUS_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 364,
				description = "Janus Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 59,
				object = "2X2C",
                collisionvolumescales = "35.0 4.0 6.0",
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
				[1] = "tarmmove",
			},
			select = {
				[1] = "tarmsel",
			},
		},
		weapondefs = {
			janus_rocket = {
				areaofeffect = 128,
				avoidfeature = false,
				craterareaofeffect = 128,
				craterboost = 0,
				cratermult = 0,
                cegTag = "missiletrailsmall-red",
				explosiongenerator = "custom:genericshellexplosion-medium-bomb",
				firestarter = 70,
				impulsefactor = 1.015,
				model = "megamisl",
				name = "Heavy g2g dual-missile launcher",
				noselfdamage = true,
				range = 380,
				reloadtime = 7.5,
				smoketrail = false,
				soundhit = "xplosml2",
				soundhitvolume = 8,
				soundhitwet = "splsmed",
				soundhitwetvolume = 0.5,
				soundstart = "rocklit1",
				soundstartvolume = 7,
				startvelocity = 100,
				texture1 = "trans",
				texture2 = "armsmoketrail",
				tracks = true,
				trajectoryheight = 0.4,
				turnrate = 22000,
				turret = true,
				weaponacceleration = 80,
				weapontype = "MissileLauncher",
				weaponvelocity = 230,
				--flighttime = 1.8,
				damage = {
					bombers = 35,
					default = 330,
					fighters = 35,
					subs = 5,
					vtol = 35,
				},
				customparams = {
					bar_model = "catapultmissile.s3o",
                    light_color = "1 0.6 0.05",
                    expl_light_color = "1 0.5 0.05",
                    expl_light_radius_mult = 1.05,
                },
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "JANUS_ROCKET",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				def = "JANUS_ROCKET",
				onlytargetcategory = "SURFACE",
				slaveto = 1,
			},
		},
	},
}
