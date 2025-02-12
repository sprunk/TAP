return {
	corshad = {
		acceleration = 0.05,
		brakerate = 0.055,
		buildcostenergy = 4600,
		buildcostmetal = 150,
		buildpic = "CORSHAD.DDS",
		buildtime = 5054,
		canfly = true,
		canmove = true,
		category = "ALL MOBILE WEAPON NOTLAND VTOL NOTSUB NOTSHIP",
		collide = true,
		cruisealt = 165,
		description = "Bomber",
		energymake = 0.9,
		energyuse = 0.9,
		explodeas = "mediumexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 615,
		maxslope = 10,
		maxvelocity = 7.8,
		maxwaterdepth = 0,
		name = "Shadow",
		noautofire = true,
		nochasecategory = "VTOL",
		objectname = "Units/Kern/CORSHAD",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 169,
		turnrate = 800,
		blocking = false,
		customparams = {
			wingsurface = 0.3,
			description_long = "The Shadow is a bomber, designed for destroying buildings. Its DPS is higher than that of ARM T1 bomber. It drops bombs over the target and makes a flyby to reload ammunition. It can strike every 9 seconds. Always scout first and combine with fighters to eliminate enemy's airwall before  bombing. Click A for attack and drag your RMB to execute a carpet bombing, or use area attack command to strike targets within a circle.",

		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
			},
			crashExplosionGenerators = {
				"crashing-small",
				"crashing-small",
				"crashing-small2",
				"crashing-small3",
				"crashing-small3",
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
				[1] = "vtolcrmv",
			},
			select = {
				[1] = "vtolcrac",
			},
		},
		weapondefs = {
			corebomb = {
				accuracy = 500,
				areaofeffect = 168,
				avoidfeature = false,
				burst = 5,
				burstrate = 0.28,
				collidefriendly = false,
				commandfire = false,
				craterareaofeffect = 168,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.25,
				explosiongenerator = "custom:genericshellexplosion-medium-bomb",
				gravityaffected = "true",
				impulseboost = 0.3,
				impulsefactor = 0.3,
				model = "bomb",
				name = "Medium a2g incinerating warheads",
				noselfdamage = true,
				range = 1280,
				reloadtime = 6,
				soundhit = "xplomed2",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.5,
				soundstart = "bombrel",
				sprayangle = 300,
				weapontype = "AircraftBomb",
				damage = {
					default = 112,
					subs = 5,
				},
				customparams = {
					bar_model = "airbomb.s3o",
                    expl_light_color = "1 0.5 0.05",
					expl_light_heat_radius_mult = 1.3,
                },
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "MOBILE",
				def = "COREBOMB",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
