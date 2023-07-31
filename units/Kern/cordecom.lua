return {
	cordecom = {
		acceleration = 0.18,
		activatewhenbuilt = true,
		autoheal = 5,
		brakerate = 1.125,
		buildcostenergy = 10000,
		buildcostmetal = 700,
		builddistance = 112,
		builder = true,
		shownanospray = false,
		buildpic = "CORDECOM.DDS",
		buildtime = 26941,
		candgun = true,
		canmove = true,
		cancapture = true,
		capturespeed = 900,
		category = "ALL WEAPON NOTSUB NOTSHIP NOTAIR SURFACE",
		cloakcost = 30,
		cloakcostmoving = 180,
		collisionvolumeoffsets = "0 -1 -6",
		collisionvolumescales = "27 39 27",
		collisionvolumetype = "CylY",
		decoyfor = "corcom",
		description = "Decoy Commander",
		energymake = 15,
		energystorage = 50,
		explodeas = "decoycommander",
		footprintx = 2,
		footprintz = 2,
		hidedamage = true,
		icontype = "corcommander",
		idleautoheal = 5,
		idletime = 1800,
		mass = 5000,
		maxdamage = 3000,
		maxslope = 20,
		maxvelocity = 1.25,
		maxwaterdepth = 35,
		metalmake = 0.5,
		metalstorage = 50,
		mincloakdistance = 50,
		movementclass = "COMMANDERKBOT",
		name = "Commander",
		nochasecategory = "VTOL",
		objectname = "Units/Kern/CORCOM",
		radardistance = 50,
		reclaimable = false,
		seismicsignature = 0,
		selfdestructas = "decoycommanderSelfd",
		showplayername = true,
		sightdistance = 377,
		terraformspeed = 750,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0.825,
		turnrate = 1133,
		upright = true,
		workertime = 300,
		buildoptions = {
		},
		customparams = {
			techlevel = 2,
			area_mex_def = "cormex",
			paralyzemultiplier = 0.025,
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
			},
			explosiongenerators = {
				[1] = "custom:com_sea_laser_bubbles",
				[2] = "custom:barrelshot-medium",
			},
		},
		sounds = {
			build = "nanlath2",
			canceldestruct = "cancel2",
			capture = "capture2",
			cloak = "kloak2",
			repair = "repair2",
			uncloak = "kloak2un",
			underattack = "warning1",
			unitcomplete = "kccorsel",
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
				[1] = "kcormov",
			},
			select = {
				[1] = "kccorsel",
			},
		},
		weapondefs = {
			armcomlaser = {
				areaofeffect = 12,
				avoidfeature = false,
				beamtime = 0.1,
				corethickness = 0.1,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				edgeeffectiveness = 0.99,
				explosiongenerator = "custom:laserhit-small-red",
				firestarter = 70,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 5,
				name = "J7Laser",
				noselfdamage = true,
				range = 300,
				reloadtime = 0.4,
				rgbcolor = "1 0 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "lasrfir1",
				soundtrigger = 1,
				targetmoveerror = 0.05,
				thickness = 2,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 900,
				damage = {
					bombers = 180,
					default = 75,
					fighters = 110,
					subs = 5,
				},
			},
			armcomsealaser = {
				areaofeffect = 12,
				avoidfeature = false,
				beamtime = 0.3,
				corethickness = 0.1,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				edgeeffectiveness = 1,
				explosiongenerator = "custom:laserhit-small-blue",
				firestarter = 35,
				firesubmersed = true,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 0.3,
				laserflaresize = 5,
				name = "J7NSLaser",
				noselfdamage = true,
				range = 260,
				reloadtime = 1,
				rgbcolor = "0.2 0.2 0.6",
				rgbcolor2 = "0.2 0.2 0.2",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "uwlasrfir1",
				soundtrigger = 1,
				targetmoveerror = 0.05,
				thickness = 5,
				tolerance = 10000,
				turret = true,
				waterweapon = true,
				weapontype = "BeamLaser",
				weaponvelocity = 900,
				damage = {
					default = 125*0.5,
					subs = 75*0.25,
				},
			},
			disintegrator = {
				areaofeffect = 32,
				avoidfeature = false,
				avoidfriendly = false,
				avoidground = false,
				commandfire = true,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				energypershot = 50,
                cegTag = "dgunprojectile",
				explosiongenerator = "custom:expldgun",
				impulseboost = 0,
				impulsefactor = 0,
				name = "Disintegrator",
				noexplode = true,
				noselfdamage = true,
				range = 250,
				reloadtime = 0.9,
				soundhit = "xplomas2",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "disigun1",
				soundtrigger = true,
				tolerance = 10000,
				turret = true,
				weapontimer = 4.2,
				weapontype = "DGun",
				weaponvelocity = 300,
				damage = {
					default = 20,
				},
				customparams = {
					expl_light_mult = 0.35,
					expl_light_radius_mult = 1.15,
					expl_light_heat_radius_mult = 2.8,
					expl_light_heat_strength_mult = 0.66,
				},
			},
		},
		weapons = {
			[1] = {
				def = "ARMCOMLASER",
				onlytargetcategory = "NOTSUB",
			},
			[2] = {
				def = "ARMCOMSEALASER",
				badtargetcategory = "VTOL",
			},
			[3] = {
				def = "DISINTEGRATOR",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
