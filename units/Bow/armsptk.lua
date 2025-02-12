return {
	armsptk = {
		acceleration = 0.18,
		brakerate = 0.564,
		buildcostenergy = 4500,
		buildcostmetal = 400,
		buildpic = "ARMSPTK.DDS",
		buildtime = 8775,
		canmove = true,
		category = "ALL KBOT MOBILE WEAPON NOTSUB NOTSHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 -2 0",
		collisionvolumescales = "42 28 42",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "All-Terrain Rocket Spider",
		energymake = 0.7,
		energyuse = 0.7,
		explodeas = "mediumexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 600,
		maxdamage = 1050,
		maxvelocity = 1.72,
		maxwaterdepth = 12,
		movementclass = "TKBOT3",
		mygravity = 10000,
		name = "Recluse",
		nochasecategory = "VTOL",
		objectname = "Units/Bow/ARMSPTK",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 440,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.1352,
		turnrate = 1122,
		customparams = {
			techlevel = 2,
			paralyzemultiplier = 0.125,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.13973236084 -4.67773437585e-06 -1.37111663818",
				collisionvolumescales = "47.3038787842 18.2459106445 47.0814971924",
				collisionvolumetype = "Box",
				damage = 800,
				description = "Recluse Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 40,
				hitdensity = 100,
				metal = 244,
				object = "ARMSPTK_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 500,
				description = "Recluse Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 98,
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
				[1] = "spider2",
			},
			select = {
				[1] = "spider3",
			},
		},
		weapondefs = {
			adv_rocket = {
				areaofeffect = 72,
				avoidfeature = false,
				collidefriendly = false,
				burst = 4,
				burstrate = 0.3,
				craterareaofeffect = 72,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.5,
				cegTag = "missiletrailsmall",
				explosiongenerator = "custom:genericshellexplosion-small",
				firestarter = 70,
				flighttime = 3,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "missile_medium",
				name = "Parabolic trajectory g2g multi-rocket launcher",
				noselfdamage = true,
				range = 550,
				reloadtime = 3,
				smoketrail = false,
				soundhit = "xplosml1",
				soundhitwet = "splssml",
				soundhitwetvolume = 0.5,
				soundstart = "rockhvy3",
				soundtrigger = true,
				startvelocity = 80,
				targetmoveerror = 0.2,
                texture1 = "trans",
				texture2 = "armsmoketrail",
				trajectoryheight = 1,
				turnrate = 2000,
				turret = true,
				weaponacceleration = 70,
				weapontimer = 6,
				weapontype = "MissileLauncher",
				weaponvelocity = 450,
				wobble = 2500,
				damage = {
					default = 120,
					subs = 5,
				},
				customparams = {
					bar_model = "cormissile2.s3o",
					light_mult = "0.66",		-- used by light_effects widget
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "ADV_ROCKET",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
