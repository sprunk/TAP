return {
	corcrw = {
		acceleration = 0.15,
		activatewhenbuilt = true,
		brakerate = 0.375,
		buildcostenergy = 74000,
		buildcostmetal = 5000,
		buildpic = "CORCRW.DDS",
		buildtime = 84229,
		canfly = true,
		canmove = true,
		category = "ALL WEAPON VTOL NOTSUB",
		collide = true,
		cruisealt = 80,
		description = "Flying Fortress",
        energymake = 50,
		explodeas = "largeexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		hoverattack = true,
		icontype = "air",
		idleautoheal = 15,
		idletime = 1200,
		maxdamage = 15000,
		maxslope = 10,
		maxvelocity = 3.83,
		maxwaterdepth = 0,
		name = "Krow",
		nochasecategory = "VTOL",
		objectname = "Units/Kern/CORCRW",
		seismicsignature = 0,
		selfdestructas = "largeExplosionGenericSelfd",
		sightdistance = 494,
		turninplaceanglelimit = 360,
		turnrate = 300,
		upright = true,
		blocking = false,
		customparams = {
			techlevel = 2,
			wingsurface = 0.8,
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg3",
				"deathceg4",
				"deathceg2",
			},
			crashExplosionGenerators = {
				"crashing-large",
				"crashing-large",
				"crashing-large2",
				"crashing-large3",
				"crashing-large3",
			}
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
			krowlaser = {
				areaofeffect = 8,
				avoidfeature = false,
				beamtime = 0.1,
				beamTTL = 1,
				corethickness = 0.13,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				energypershot = 50,
				explosiongenerator = "custom:laserhit-small-green",
				firestarter = 90,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 5.5,
				name = "HighEnergyLaser",
				noselfdamage = true,
				proximitypriority = 1,
				range = 575,
				reloadtime = 0.65,
				rgbcolor = "0 1 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "Lasrmas2",
				soundtrigger = 1,
				targetmoveerror = 0.3,
				thickness = 2,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 800,
				damage = {
					default = 90,
					subs = 5,
				},
				customparams = {
					light_radius_mult = "1.1",		-- used by light_effects widget
				},
			},
			krowlaser2 = {
				areaofeffect = 32,
				avoidfeature = false,
				beamtime = 0.25,
				beamTTL = 1,
				corethickness = 0.2,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				energypershot = 100,
				explosiongenerator = "custom:laserhit-large-green",
				firestarter = 90,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 7,
				name = "High energy a2g laser",
				noselfdamage = true,
				range = 525,
				reloadtime = 1.3,
				rgbcolor = "0 1 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "Lasrmas2",
				soundtrigger = 1,
				targetmoveerror = 0.15,
				thickness = 2.7,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 800,
				damage = {
					default = 250,
					subs = 5,
				},
				customparams = {
					light_radius_mult = "1.1",		-- used by light_effects widget
				},
			},
		},
		weapons = {
			[1] = {
				def = "KROWLASER2",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				def = "KROWLASER",
				onlytargetcategory = "SURFACE",
			},
			[3] = {
				def = "KROWLASER",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
