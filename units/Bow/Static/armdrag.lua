return {
	armdrag = {
		acceleration = 0,
		blocking = true,
		brakerate = 0,
		buildcostenergy = 200,
		buildcostmetal = 10,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 4,
		buildinggrounddecalsizey = 4,
		buildinggrounddecaltype = "armdrag_aoplane.dds",
		buildpic = "ARMDRAG.DDS",
		buildtime = 255,
		canattack = false,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "32 22 32",
		collisionvolumetype = "CylY",
		corpse = "ROCKTEETH",
		crushresistance = 250,
		description = "Dragons Teeth",
		footprintx = 2,
		footprintz = 2,
		hidedamage = true,
		idleautoheal = 0,
		levelground = false,
		maxdamage = 2500,
		maxslope = 64,
		maxwaterdepth = 0,
		name = "Dragon's Teeth",
		objectname = "Units/Bow/ARMDRAG.3do",
		repairable = false,
		seismicsignature = 0,
		sightdistance = 1,
		usebuildinggrounddecal = true,
		yardmap = "ffff",
		customparams = {
			removewait = true,
			removestop = true,
			paralyzemultiplier = 0,
		},
		featuredefs = {
			rockteeth = {
				animating = 0,
				animtrans = 0,
				blocking = false,
				category = "heaps",
				damage = 500,
				description = "Rubble",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 2,
				object = "2X2A",
                collisionvolumescales = "35.0 4.0 6.0",
                collisionvolumetype = "cylY",
				reclaimable = true,
				resurrectable = 0,
				shadtrans = 1,
				world = "greenworld",
			},
		},
		sfxtypes = { 
			pieceExplosionGenerators = { 
			
			}, 
		},
	},
}
