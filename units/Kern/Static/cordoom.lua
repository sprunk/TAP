return {
	cordoom = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 4096,
		buildcostenergy = 45000,
		buildcostmetal = 3000,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 5,
		buildinggrounddecalsizey = 5,
		buildinggrounddecaltype = "cordoom_aoplane.dds",
		buildpic = "CORDOOM.DDS",
		buildtime = 55276,
		canrepeat = false,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0.0 -5.0 0.0",
		collisionvolumescales = "48.0 110.0 48.0",
		collisionvolumetype = "box",
		corpse = "DEAD",
		damagemodifier = 0.25,
		description = "Energy Weapon",
		energystorage = 2000,
		explodeas = "largeBuildingexplosiongeneric",
		footprintx = 4,
		footprintz = 4,
		icontype = "building",
		idleautoheal = 2,
		idletime = 1800,
		losemitheight = 80,
		maxdamage = 8500,
		maxslope = 10,
		maxwaterdepth = 0,
		name = "Doomsday Machine",
		nochasecategory = "VTOL",
		objectname = "Units/Kern/CORDOOM",
		onoffable = true,
		radardistance = 1200,
		radaremitheight = 80,
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 780,
		usebuildinggrounddecal = true,
		yardmap = "yooy oooo oooo yooy",
		customparams = {
			techlevel = 2,
			removewait = true,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.281730651855 -0.153618286133 3.57356262207",
				collisionvolumescales = "80.6815948486 91.7637634277 82.1471252441",
				collisionvolumetype = "Box",
				damage = 5400,
				description = "Doomsday Machine Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 1611,
				object = "CORDOOM_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 2700,
				description = "Doomsday Machine Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 644,
				object = "3X3E",
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
				[1] = "doom",
			},
			select = {
				[1] = "doom",
			},
		},
		weapondefs = {
			atadr = {
				areaofeffect = 12,
				avoidfeature = false,
				beamtime = 0.3,
				corethickness = 0.32,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				energypershot = 500,
				explosiongenerator = "custom:laserhit-large-blue",
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 8,
				largeBeamLaser = true,
				texture3 = "largebeam",
				tileLength = 150,
				scrollSpeed = 5,
				name = "Long-range g2g tachyon accelerator",
				noselfdamage = true,
				range = 950,
				reloadtime = 6,
				rgbcolor = "0 0 1",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "annigun1",
				soundtrigger = 1,
				targetmoveerror = 0.3,
				thickness = 5.5,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 1500,
				damage = {
					commanders = 999,
					default = 4500,
					subs = 5,
				},
				customparams = {
					light_radius_mult = "1.15",		-- used by light_effects widget
				},
			},
			doomsday_green_laser = {
				areaofeffect = 12,
				avoidfeature = false,
				beamtime = 0.25,
				corethickness = 0.2,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				energypershot = 50,
				explosiongenerator = "custom:genericshellexplosion-medium-beam",
				firestarter = 90,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 7,
				name = "High energy g2g laser",
				noselfdamage = true,
				proximitypriority = 0,
				range = 650,
				reloadtime = 0.55,
				rgbcolor = "0 1 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "lasrhvy3",
				soundtrigger = 1,
				targetmoveerror = 0.15,
				thickness = 2.6,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 800,
				damage = {
					bombers = 65,
					default = 247,
					fighters = 65,
					subs = 5,
					vtol = 65,
				},
			},
			doomsday_red_laser = {
				areaofeffect = 12,
				avoidfeature = false,
				beamtime = 0.1,
				burst = 2,
				burstrate = 0.01,
				corethickness = 0.15,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				energypershot = 5,
				explosiongenerator = "custom:laserhit-small-red",
				firestarter = 100,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 5,
				name = "Light close-quarters g2g laser",
				noselfdamage = true,
				proximitypriority = 3,
				range = 370,
				reloadtime = 0.28,
				rgbcolor = "1 0 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "lasrfir3",
				soundtrigger = 1,
				targetmoveerror = 0.1,
				thickness = 2.1,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 2250,
				damage = {
					default = 40,
					subs = 2,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL GROUNDSCOUT",
				def = "ATADR",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				def = "DOOMSDAY_GREEN_LASER",
				onlytargetcategory = "NOTSUB",
			},
			[3] = {
				def = "DOOMSDAY_RED_LASER",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
