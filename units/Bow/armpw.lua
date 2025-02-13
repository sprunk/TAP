return {
	armpw = {
		acceleration = 0.36,
		brakerate = 0.6,
		buildcostenergy = 1000,
		buildcostmetal = 45,
		buildpic = "ARMPW.DDS",
		buildtime = 1420,
		canmove = true,
		category = "KBOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 -1 0",
		collisionvolumescales = "22 28 22",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Fast Infantry Kbot",
		energymake = 0.3,
		energyuse = 0.3,
		explodeas = "smallExplosionGeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 300,
		maxslope = 17,
		maxvelocity = 2.8,
		maxwaterdepth = 12,
		movementclass = "KBOT2",
		name = "Peewee",
		nochasecategory = "VTOL",
		objectname = "Units/Bow/ARMPW",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 429,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.848,
		turnrate = 1056,
		upright = true,
		customparams = {
			description_long = "Peewee is a basic infantry Kbot. Being very cheap to build and having high top speeds can be useful for scouting and taking down unguarded metal extractors and eco. In late T1 warfare Peewees can be used for ambushing Commanders and speedy skirmishing. Light armor and short range makes it susceptible to defensive towers and riot tanks",  
			wpn1turretx = 300,
			wpn1turrety = 300,
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.979118347168 -0.453806965332 -0.796119689941",
				collisionvolumescales = "30.1392364502 18.4953460693 29.797164917",
				collisionvolumetype = "Box",
				damage = 192,
				description = "Peewee Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 40,
				hitdensity = 100,
				metal = 29,
				object = "ARMPW_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 96,
				description = "Peewee Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 12,
				object = "2X2F",
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
				"deathceg3",
				"deathceg2",
			},
			explosiongenerators = {
				[1] = "custom:barrelshot-tiny",
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
				[1] = "servtny2",
			},
			select = {
				[1] = "servtny2",
			},
		},
		weapondefs = {
			emg = {
				areaofeffect = 8,
				avoidfeature = false,
				burst = 3,
				burstrate = 0.1,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:plasmahit-small",
				firestarter = 100,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				intensity = 0.7,
				name = "Rapid-fire close-quarters g2g plasma guns",
				noselfdamage = true,
				range = 180,
				reloadtime = 0.31,
				rgbcolor = "1 0.95 0.4",
				size = 2.15,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "flashemg",
				sprayangle = 1180,
				tolerance = 5000,
				turret = true,
				weapontimer = 0.1,
				weapontype = "Cannon",
				weaponvelocity = 500,
				damage = {
					bombers = 3,
					default = 11,
					fighters = 3,
					subs = 1,
					vtol = 3,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "EMG",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
