return {
	corroach = {
		acceleration = 0.12,
		activatewhenbuilt = true,
		brakerate = 0.45,
		buildcostenergy = 5800,
		buildcostmetal = 70,
		buildpic = "CORROACH.DDS",
		buildtime = 7899,
		canmove = true,
		category = "KBOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 3 0",
		collisionvolumescales = "18 14 18",
		collisionvolumetype = "CylY",
		description = "Amphibious Crawling Bomb",
		energymake = 0.1,
		energyuse = 0.1,
		explodeas = "crawl_blastsml",
		firestate = 2,
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		mass = 1500,
		maxdamage = 560,
		maxslope = 32,
		maxvelocity = 2.7,
		maxwaterdepth = 112,
		movementclass = "AKBOTBOMB2",
		name = "Roach",
		nochasecategory = "VTOL",
		objectname = "Units/Kern/CORROACH",
		seismicsignature = 0,
		selfdestructas = "crawl_blast",
		selfdestructcountdown = 0,
		sightdistance = 260,
		turninplace = 0,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.782,
		turnrate = 1507,
		customparams = {
			techlevel = 2,
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
				[1] = "servsml6",
			},
			select = {
				[1] = "servsml6",
			},
		},
		weapondefs = {
			crawl_detonator = {
				areaofeffect = 5,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0,
				explosiongenerator = "",
				firesubmersed = true,
				gravityaffected = "true",
				impulseboost = 0,
				impulsefactor = 0,
				name = "Mine Detonator",
				range = 1,
				reloadtime = 0.1,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				weapontype = "Cannon",
				weaponvelocity = 1000,
				damage = {
					crawlingbombs = 1000,
					default = 0,
				},
			},
			crawl_dummy = {
				areaofeffect = 0,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0,
				explosiongenerator = "",
				firesubmersed = true,
				impulseboost = 0,
				impulsefactor = 0,
				name = "Crawlingbomb Dummy Weapon",
				range = 80,
				reloadtime = 0.1,
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				tolerance = 100000,
				weapontype = "Melee",
				weaponvelocity = 100000,
				avoidground = false,
				waterweapon = true,
				damage = {
					default = 0,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "CRAWL_DUMMY",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				def = "CRAWL_DETONATOR",		-- gadget uses this name to filter targetting on air
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
