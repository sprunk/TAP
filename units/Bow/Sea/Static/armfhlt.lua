return {
	armfhlt = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 16384,
		buildcostenergy = 6200,
		buildcostmetal = 470,
		buildpic = "ARMFHLT.DDS",
		buildtime = 9670,
		canrepeat = false,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 -15 0",
		collisionvolumescales = "46 59 46",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Floating Heavy Laser Tower",
		energymake = 5,
		energystorage = 200,
		explodeas = "largeBuildingexplosiongeneric",
		footprintx = 4,
		footprintz = 4,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 3837,
		minwaterdepth = 2,
		name = "Stingray",
		nochasecategory = "MOBILE",
		objectname = "Units/Bow/ARMFHLT",
		script = "ARMFHLT_LUS.LUA",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 630,
		waterline = 3,
		yardmap = "wwwwwwwwwwwwwwww",
		customparams = {
			bar_collisionvolumeoffsets = "0 15 0",
			removewait = true,
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -3.6047363281e-05 -7.62939453125e-06",
				collisionvolumescales = "50.0 45.7867279053 45.9999847412",
				collisionvolumetype = "Box",
				damage = 2302,
				description = "Stingray Wreckage",
				energy = 0,
				footprintx = 4,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 341,
				object = "ARMFHLT_DEAD",
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
			cloak = "kloak1",
			uncloak = "kloak1un",
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
				[1] = "twractv3",
			},
			select = {
				[1] = "twractv3",
			},
		},
		weapondefs = {
			armfhlt_laser = {
				areaofeffect = 8,
				avoidfeature = false,
				beamtime = 0.15,
				corethickness = 0.18,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				energypershot = 40,
				explosiongenerator = "custom:laserhit-medium-green",
				firestarter = 90,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 7,
				name = "HighEnergyLaser",
				noselfdamage = true,
				range = 630,
				reloadtime = 0.9,
				rgbcolor = "0 1 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "Lasrmas2",
				soundtrigger = 1,
				targetmoveerror = 0.1,
				thickness = 2.4,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 900,
				damage = {
					bombers = 52,
					commanders = 300,
					default = 210,
					fighters = 52,
					subs = 5,
					vtol = 52,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "ARMFHLT_LASER",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
