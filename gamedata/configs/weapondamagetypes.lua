--
-- Created by IntelliJ IDEA.
-- User: MaDDoX
-- Date: 14/05/17
-- Time: 04:16

-- Main damage type definition table. Keys are the unit name, value is a record table - weaponName,damageType
-- PS.: This table content was auto-generated with PrintWeaponDamageTypes() (@weapondefs_post.lua)

--- PS/2.: This only applies to Weapons defined *within* the unitDefs. For 'standalone' or 'shared' weapons (those
--- in the /weapons folder, the damageType is defined within its customParams entry. When used in the unit's .lua
--- UnitDef, that entry also *overrides* whatever's in here, so use it with discretion.

-- v2.7RC4 changes:
--      - Laser now includes former damage types: HFLaser (defense laser)
--		- Pierce includes former damage types: Missile and Neutron
--		- Shell includes former damage types: Bullet, Cannon and Flak
--		- Omni now includes former damage types: Explosive (aka. "damaging to everything")
--		- Plasma now includes former damage type: Siege
--		- Thermo now includes former damage type: Nuke

local weaponDamageTypes = {
	
--	armflash = { emgx = "bullet" },
--	armroy = { arm_roy = "cannon", depthcharge = "omni"},

    armck = { ["Harvester"] = "harvest", },
    corck = { ["Harvester"] = "harvest", },
	armck2 = { ["Harvester"] = "harvest", },
	corck2 = { ["Harvester"] = "harvest", },
    armcv = { ["Harvester"] = "harvest", },
    corcv = { ["Harvester"] = "harvest", },
    armack = { ["Harvester"] = "harvest", },
    armacv = { ["Harvester"] = "harvest", },
    corack = { ["Harvester"] = "harvest", },
    coracv = { ["Harvester"] = "harvest", },
    armca = { ["Harvester"] = "harvest", },
    corca = { ["Harvester"] = "harvest", },
    armaca = { ["Harvester"] = "harvest", },
    coraca = { ["Harvester"] = "harvest", },
	
	corsnap = { ["MediumPlasmaCannon"] = "cannon", },
	corsktl = { ["RailWeapon"]="thermo"}, --{ ["Mine Detonator"] = "omni", ["Crawlingbomb Dummy Weapon"] = "omni", ["RailWeapon"] = "rail" },
	cormort = { ["SiegeCannon"] = "photon", ["SiegeCannonAA"] = "photon", },
	armcroc = { ["PlasmaCannon"] = "cannon", },
	cormart = { ["PlasmaCannon"] = "plasma", },
	corah = { ["Missiles"] = "pierce", },
	armmercury = { ["ADVSAM"] = "plasma", },
	armthund = { ["Bombs"] = "explosion", },
	corcrw = { ["HighEnergyLaser"] = "pierce", ["PlasmaBeam"] = "plasma", },
	armfig = { ["GuidedMissiles"] = "pierce", ["AARifle"] = "bullet",},
	armllt = { ["LightLaser"] = "laser", },
	armmlt = { ["MediumLaser"] = "laser", },
	corssub = { ["advTorpedo"] = "pierce", },
	corhurc = { ["AdvancedBombs"] = "omni", },
	coraak = { ["Missiles"] = "pierce", ["MissilesAA"] = "pierce", },
	armmship = { ["Rocket"] = "pierce", ["Missiles"] = "plasma", },
	corcom =  { ["Disintegrator"] = "omni", ["J7Laser"] = "omni", ["J7NSLaser"] = "omni", },
    corcom1 = { ["Disintegrator"] = "omni", ["J7Laser"] = "omni", ["J7NSLaser"] = "omni", },
	corcom2 = { ["Disintegrator"] = "omni", ["J7Laser"] = "omni", ["J7NSLaser"] = "omni", },
	corcom3 = { ["Disintegrator"] = "omni", ["J7Laser"] = "omni", ["J7NSLaser"] = "omni", ["Shield"] = "omni", },
	corcom4 = { ["Disintegrator"] = "omni", ["J7Laser"] = "omni", ["J7NSLaser"] = "omni", ["Shield"] = "omni", },
    armcomboss = { ["Disintegrator"] = "omni", ["J7Laser"] = "omni", ["J7NSLaser"] = "omni", ["Shield"] = "omni", },
    corcomboss = { ["Disintegrator"] = "omni", ["J7Laser"] = "omni", ["J7NSLaser"] = "omni", ["Shield"] = "omni", },
	corpun = { ["PlasmaCannon"] = "plasma", ["NavalCannon"] = "omni", },
	armbats = { ["BattleshipCannon"] = "plasma", },
	corfrt = { ["Missiles"] = "pierce", ["MissilesAA"] = "pierce", },
	armgate = { ["PlasmaRepulsor"] = "none", },
	corkarg = { ["FlakCannon"] = "flak", ["ShoulderRockets"] = "pierce", ["KarganethMissiles"] = "pierce", },
	armroy = { ["HeavyCannon"] = "plasma", ["DepthCharge"] = "cannon", },
	corfmd = { ["Rocket"] = "omni", },	--antinuke
	corsh = { ["Laser"] = "pierce", },
	corllt = { ["LightLaser"] = "laser", },
	armlun = { ["Guided Rockets"] = "pierce", ["DepthCharge"] = "cannon", },
	armrock = { ["Rockets"] = "pierce", ["AARockets"] = "pierce",},
	armmav = { ["GaussCannon"] = "flak", },
	corsub = { ["Torpedo"] = "cannon", },
    armbeamer = { ["BeamLaser"] = "thermo", },
	armamex = { ["BeamLaser"] = "thermo", },
	cordlt = { ["LightLaser1"] = "laser", ["LightLaser2"] = "laser", },
	corft = { ["FlameThrower"] = "thermo", },
	armyork = { ["FlakCannon"] = "flak", ["FlakAACannon"] = "flak", ["Shield"] = "omni", },
	armdeva = { ["FlakCannon"] = "flak", ["FlakAACannon"] = "flak", },
	corshred = { ["FlakCannon"] = "flak", ["FlakAACannon"] = "flak", },
	armhlt = { ["HighEnergyLaser"] = "laser", },
	armpw = { ["peewee"] = "bullet", ["grenade"] = "laser", ["empexplosion"]="emp",},
    armmark = { ["smokebomb"] = "laser",},
	armmart = { ["PlasmaCannon"] = "photon", },
	armcom =  { ["Disintegrator"] = "omni", ["J7Laser"] = "omni", ["J7NSLaser"] = "omni", ["empexplosion"] = "emp", },
    armcom1 = { ["Disintegrator"] = "omni", ["J7Laser"] = "omni", ["J7NSLaser"] = "omni",},
	armcom2 = { ["Disintegrator"] = "omni", ["J7Laser"] = "omni", ["J7NSLaser"] = "omni", },
	armcom3 = { ["Disintegrator"] = "omni", ["J7Laser"] = "omni", ["J7NSLaser"] = "omni", ["Shield"] = "omni"},
	armcom4 = { ["Disintegrator"] = "omni", ["J7Laser"] = "omni", ["J7NSLaser"] = "omni", ["Shield"] = "omni"},
	shiva = { ["HeavyRockets"] = "plasma", ["HeavyCannon"] = "plasma", },
	--armorco = { ["FlakCannon"] = "pierce", ["SuperEMG"] = "pierce", ["RiotRockets"] = "pierce", },
	corscreamer = { ["ADVSAM"] = "plasma", },
	armpincer = { ["PincerCannon"] = "cannon", },
	armpb = { ["GaussCannon"] = "cannon", },
	armsfig = { ["GuidedMissiles"] = "pierce", },
	armham = { ["PlasmaCannon"] = "plasma", ["Shield"] = "omni",},
	armsub = { ["Torpedo"] = "cannon", },
	armsubk = { ["AdvancedTorpedo"] = "cannon", },
	corban = { ["Banisher"] = "photon", },
	tawf009 = { ["AdvTorpedo"] = "pierce", },
	corcarry = { ["Rocket"] = "omni", },	--antinuke
	armptl = { ["Level1TorpedoLauncher"] = "pierce", },
	armbull = { ["PlasmaCannon"] = "cannon", ["TankDepthCharge"] = "cannon", },
	armbrtha = { ["BerthaCannon"] = "plasma", },
	corvipe = { ["GaussCannon"] = "cannon", },
	armsh = { ["Laser"] = "pierce", },
	armtl = { ["Level1TorpedoLauncher"] = "cannon", },
	cormabm = { ["Rocket"] = "omni", },
	armsnipe = { ["SniperWeapon"] = "thermo", },
	corbhmth = { ["PlasmaBattery"] = "plasma", },
	armsaber = { ["LightningBolt"] = "pierce", },
	corsent = { ["FlakCannon"] = "flak", ["FlakCannonAA"] = "flak", ["Shield"] = "omni", },
	armkam = { ["RiotRocket"] = "pierce", },
    armkamturret = { ["RiotRocket"] = "explosion", ["Shield"] = "omni", },
	corvamp = { ["GuidedMissiles"] = "pierce", ["VampBlaster"] = "thermo", },
	meteor = { ["Asteroid"] = "plasma", },
    meteorite = { ["Meteorite"] = "pierce", },
	corcan = { ["HighEnergyLaser"] = "pierce", },
	corlevlr = { ["RiotCannon"] = "flak", },
	armwar = { ["MediumLaser"] = "laser", ["MediumLaserAA"] = "laser",},
	corshark = { ["AdvancedTorpedo"] = "cannon", },
	armdecom = { ["Disintegrator"] = "omni", ["J7Laser"] = "omni", },
	corbuzz = { ["RapidfireLRPC"] = "plasma", },
	corrl = { ["Missiles"] = "pierce", ["AAMissiles"] = "pierce", },
	corblackhy = { ["HighEnergyLaser"] = "pierce", ["BattleshipCannon"] = "plasma", ["RapidSamMissile"] = "plasma", },
	corgate = { ["PlasmaRepulsor"] = "none", },
	corhlt = { ["HighEnergyLaser"] = "laser", },
	armblade = { ["aircannon"] = "cannon", },
	armguard = { ["PlasmaCannon"] = "plasma", ["NavalCannon"] = "explosion"},
	tawf013 = { ["LightArtillery"] = "plasma", },
	cormship = { ["Rocket"] = "pierce", ["Missiles"] = "plasma", },
	armaak = { ["Missiles"] = "pierce", ["MissilesAA"] = "pierce", },
    armpship = { ["Missiles"] = "pierce", ["MissilesAA"] = "pierce", },
    corpship = { ["Missiles"] = "pierce", ["MissilesAA"] = "pierce", },
	armvulc = { ["RapidfireLRPC"] = "plasma", },
	corstorm = { ["Rockets"] = "pierce", ["AARockets"] = "pierce", },
	armamb = { ["PopupCannon"] = "plasma", },
	armaas = { ["AA2Missile"] = "pierce", ["FlakCannon"] = "flak", ["FlakAACannon"] = "flak",  },
	armrl = { ["Missiles"] = "pierce", ["AAMissiles"] = "pierce", },
	armamd = { ["Rocket"] = "omni", },	--antinuke
	marauder = { ["Missiles"] = "pierce", ["MechPlasmaCannon"] = "pierce", },
--	armshock = { ["ShockerHeavyCannon"] = "omni", },
	armatl = { ["LongRangeTorpedo"] = "pierce", },
	corape = { ["RiotRocket"] = "pierce", },
	corparrow = { ["PoisonArrowCannon"] = "cannon", },
	corroy = {  ["HeavyCannon"] = "plasma", ["DepthCharge"] = "cannon", },
	armfav = { ["HeavyRocket"] = "flak", },
	cjuno = { ["AntiSignal"] = "omni", },
	armmerl = { ["Rocket"] = "pierce", },
	madsam = { ["AA2Missile"] = "pierce", ["AA2AAMissile"] = "pierce",},
	armflash = { ["flash"] = "laser", ["flashaa"] = "laser", ["Shield"] = "omni",},
	corbw = { ["laser"] = "laser", ["Paralyzer"] = "emp", ["Shield"] = "omni",},
    corbwturret = { ["laser"] = "laser" },
	corbats = { ["BattleshipCannon"] = "plasma", ["HighEnergyLaser"] = "plasma", },
	armfrt = { ["Missiles"] = "pierce", ["MissilesAA"] = "pierce", },
	armfhlt = { ["HighEnergyLaser"] = "pierce", },
	armseap = { ["TorpedoLauncher"] = "pierce", },
	corshad = { ["Bombs"] = "explosion", },
	armsam = { ["Missiles"] = "pierce", ["AAMissiles"] = "pierce", ["firerain"] = "thermo", },
	armcir = { ["ExplosiveRockets"] = "pierce", ["ExplosiveRocketsAA"] = "pierce", },
	corhrk = { ["HeavyFlak"] = "flak", },
	kernfry = { ["ThermoBurst"] = "laser", },	--thermo
	armdecade = { ["flash"] = "pierce", },
	armliche = { ["PlasmaImplosionDumpRocket"] = "thermo", },
	corbow = { ["FlakCannon"] = "flak", ["AA2Missile"] = "pierce", ["FlakAACannon"] = "flak", },
	corgol = { ["HeavyCannon"] = "cannon", },
	armpnix = { ["AdvancedBombs"] = "explosion", },
	armlance = { ["TorpedoLauncher"] = "pierce", },
	armsb = { ["SeaAdvancedBombs"] = "pierce", },
	armfboy = { ["HeavyPlasma"] = "photon", },
	armstump = { ["LightCannon"] = "cannon", ["TankDepthCharge"] = "cannon", },
    armanac = { ["PlasmaCannon"] = "plasma", },
	armsilo = { ["NuclearMissile"] = "thermo", },
	cormando = { ["CommandoBlaster"] = "thermo", ["CommandoMineLayer"] = "explosion", },
	armzeus = { ["LightningGun"] = "thermo", },
	corwolv = { ["LightArtillery"] = "plasma", },
	armbrawl = { ["Machinegun"] = "laser", },
	corexp = { ["LightLaser"] = "bullet", },
	cortl = { ["Level1TorpedoLauncher"] = "cannon", },
	armlatnk = { ["Missiles"] = "pierce", ["LightningGun"] = "thermo", },
	corerad = { ["ExplosiveRockets"] = "pierce", ["ExplosiveRocketsAA"] = "pierce", },
	armraz = { ["MechRapidLaser"] = "thermo", },
	armepoch = { ["FlakCannon"] = "flak", ["BattleshipCannon"] = "plasma", ["BattleShipCannon"] = "plasma", },
	armanni = { ["ATA"] = "pierce", },
	armcrus = { ["CruiserCannon"] = "cannon", ["L2DeckLaser"] = "laser", ["CruiserDepthCharge"] = "cannon", },
	nsaclash = { ["HighEnergyLaser"] = "pierce", },
	armspid = { ["Paralyzer"] = "emp", },
	armpt = { ["Laser"] = "laser", ["LaserAA"] = "laser", },
	coratl = { ["LongRangeTorpedo"] = "pierce", },
	armcarry = { ["Rocket"] = "omni", },
	corkrog = { ["KrogCrush"] = "omni", ["HeavyRockets"] = "pierce", ["GaussCannon"] = "plasma", ["KrogHeatRay"] = "thermo", },
	corgator = { ["Laser"] = "laser", ["LaserAA"] = "laser", ["Shield"] = "omni",},
	corint = { ["IntimidatorCannon"] = "plasma", },
	armbanth = { ["HeavyRockets"] = "explosion", ["ImpulsionBlaster"] = "plasma", ["DEEEEEEWWWMMM"] = "pierce", },
	corcat = { ["RavenCatapultRockets"] = "pierce", },
	corptl = { ["Level1TorpedoLauncher"] = "pierce", },
	corsumo = { ["HighEnergyLaser"] = "pierce", },
	armfflak = { ["FlakCannon"] = "flak", },
	cortitan = { ["TorpedoLauncher"] = "pierce", },
	corpyro = { ["FlameThrower"] = "thermo", },
	corsilo = { ["CoreNuclearMissile"] = "thermo", },
	corraid = { ["LightCannon"] = "cannon", ["TankDepthCharge"] = "cannon", },
    corsnap = { ["PlasmaCannon"] = "plasma" },
	correap = { ["PlasmaCannon"] = "cannon", ["TankDepthCharge"] = "cannon", },
	armmine1 = { ["Crawlingbomb Dummy Weapon"] = "bullet", ["Mine Detonator"] = "bullet", },
	armmine3 = { ["Crawlingbomb Dummy Weapon"] = "pierce", ["Mine Detonator"] = "pierce", },
	armfmine3 = { ["Crawlingbomb Dummy Weapon"] = "pierce", ["Mine Detonator"] = "pierce", },
	cormine4 = { ["CrawlingbombDummyWeapon"] = "bullet", ["MineDetonator"] = "bullet", },
	armemp = { ["EMPMissile"] = "emp", },
	corpt = { ["Cannon"] = "cannon", ["CannonAA"] = "cannon", },
	corcrus = { ["CruiserCannon"] = "cannon", ["L2DeckLaser"] = "laser", ["CruiserDepthCharge"] = "cannon", },
	cortrem = { ["RapidArtillery"] = "photon", },
	cordoom = { ["HighEnergyLaser"] = "pierce", ["PlasmaBeam"] = "plasma", ["ATAD"] = "pierce", },
	armhawk = { ["HawkMissile"] = "pierce", ["HawkBeamer"] = "thermo", },
	corthud = { ["PlasmaCannon"] = "plasma",  ["Shield"] = "omni",},
    cordefiler = { ["FlakCannon"] = "flak", },
	armscab = { ["Rocket"] = "explosion", },
	cortron = { ["TacticalNuke"] = "thermo", },
	corak = { ["Laser"] = "bullet", },
	cordecom = { ["Disintegrator"] = "omni", ["J7Laser"] = "omni", },
	cortermite = { ["FlameThrower"] = "thermo", },
    corstil = { ["EMPbomb"] = "emp", },
	armsptk = { ["HeavyRocket"] = "pierce", },
	corst = { ["Gauss"] = "pierce", },
	cortoast = { ["PopupCannon"] = "plasma", },
	coresupp = { ["LightLaser"] = "pierce", },
	cormist = { ["Missiles"] = "pierce", ["AAMissiles"] = "pierce", ["smokebomb"] = "laser", },
	armfgate = { ["NavalPlasmaRepulsor"] = "plasma", },
	corveng = { ["GuidedMissiles"] = "pierce", ["Machinegun"] = "bullet", },
	armmanni = { ["ATAM"] = "pierce", },
	armdfly = { ["Paralyzer"] = "emp", },
    corvrad = { ["neutronstriketagger"] = "thermo", ["Shield"] = "omni", },
	corjugg = { ["GaussCannon"] = "omni", ["LightLaser"] = "laser", },

	kernhq_lt = { ["HighEnergyLaser"] = "laser", },
	kernhq_ct = { ["HQCannon"] = "cannon", },
	kernhq_mt = { ["Missiles"] = "pierce", ["AAMissiles"] = "pierce", },
	kernhq_rt = { ["ScoutPulse"] = "omni", },

	bowdaemon = { ["Laser"] = "omni", ["NSLaser"] = "omni", ["Shield"] = "omni", },
	kerndaemon = { ["Laser"] = "omni", ["NSLaser"] = "omni", ["Shield"] = "omni", },
	bowadvdaemon = { ["Laser"] = "omni", ["NSLaser"] = "omni", ["Shield"] = "omni", },
	kernadvdaemon = { ["Laser"] = "omni", ["NSLaser"] = "omni", ["Shield"] = "omni", },

	guardsml = { ["FlakCannon"] = "omni", },
	guardmed = { ["FlakCannon"] = "omni", },
	guardlrg = { ["FlakCannon"] = "omni", },
	guarduber = { ["FlakCannon"] = "omni", },
	["else"] = {},
}

return weaponDamageTypes




