return {
	armsonar = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 8192,
		buildcostenergy = 450,
		buildcostmetal = 20,
		buildpic = "ARMSONAR.DDS",
		buildtime = 912,
		canattack = false,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "28 41 28",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Locates Water Units",
		energymake = 1,
		energyuse = 1,
		explodeas = "smallBuildingexplosiongeneric-uw",
		footprintx = 2,
		footprintz = 2,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 50,
		maxslope = 10,
		minwaterdepth = 10,
		name = "Sonar Station",
		objectname = "Units/Bow/ARMSONAR",
		onoffable = true,
		seismicsignature = 0,
		selfdestructas = "smallBuildingExplosionGenericSelfd-uw",
		sightdistance = 515,
		sonardistance = 1200,
		yardmap = "oooo",
		customparams = {
			removewait = true,
			removestop = true,
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -1.56127929678e-05 -0.0",
				collisionvolumescales = "31.3499755859 42.5373687744 28.2463684082",
				collisionvolumetype = "Box",
				damage = 30,
				description = "Sonar Station Wreckage",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 13,
				object = "ARMSONAR_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
			},
		},
		sounds = {
			activate = "sonar1",
			canceldestruct = "cancel2",
			deactivate = "sonarde1",
			underattack = "warning1",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "sonar1",
			},
		},
	},
}
