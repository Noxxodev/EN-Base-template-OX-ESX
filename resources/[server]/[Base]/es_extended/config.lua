Config = {}
Config.Locale = GetConvar("esx:locale", "en")

Config.OxInventory = GetResourceState("ox_inventory") ~= 'missing'

Config.Accounts = {
    bank = {
        label = TranslateCap("account_bank"),
        round = true,
    },
    black_money = {
        label = TranslateCap("account_black_money"),
        round = true,
    },
    money = {
        label = TranslateCap("account_money"),
        round = true,
    },
}

Config.DoubleJob = {
	enable = true, -- si vous utilisez le double job laisser true si non false
	label = "Job2",
	table = "Jobs2",
	getTable = "GetJobs2",
	name = 'job2',
	event = 'esx:setJob2',
	set = "setJob2",
	get = "getJob2",
	all = "GetJobs2",
	does = "DoesJob2Exist",
	refresh = "RefreshJob2",
	jobcount = "Jobs2PlayerCount",
	database = {
		list = 'jobs2',
		list_grade = 'job2_grades',
		list_grade_name = 'job2_name',
		users_dj_name = 'job2',
		users_dj_grade = 'job2_grade'
	},
	default = {
		list = {
			name = "unemployed2",
			label = "Unemployed2",
		},
		list_grade = {
			name = "unemployed2",
			label = "Sans second emploie",
			grade = 0
		}
	},
	command =  {
		name = 'setjob2',
		group = 'admin',
		translate = {
			'Commande setjob2 invalide',
			'Assignez un setjob2 au joueur',
			'Nom du job2',
			'Numéro du grade'
		}
	},
	translate = {
		'Vous avez joué un event sans autorisation (tricheur)'
	}
}

Config.StartingAccountMoney = { bank = 50000 }

Config.StartingInventoryItems = false -- table/false

Config.DefaultSpawns = { -- If you want to have more spawn positions and select them randomly uncomment commented code or add more locations
    { x = 222.2027, y = -864.0162, z = 30.2922, heading = 1.0 },
}

Config.AdminGroups = {
    ["owner"] = true,
    ["admin"] = true,
}

Config.Notif = 'ox' --'ox'/'esx'
Config.EnablePaycheck = true -- enable paycheck
Config.LogPaycheck = false -- Logs paychecks to a nominated Discord channel via webhook (default is false)
Config.EnableSocietyPayouts = true -- pay from the society account that the player is employed at? Requirement: esx_society
Config.MaxWeight = 24 -- the max inventory weight without backpack
Config.PaycheckInterval = 30 * 60000 -- how often to recieve pay checks in milliseconds
Config.EnableDebug = false -- Use Debug options?
Config.EnableDefaultInventory = true -- Display the default Inventory ( F2 )
Config.EnableWantedLevel = false -- Use Normal GTA wanted Level?
Config.EnablePVP = true -- Allow Player to player combat

Config.Multichar = false
Config.Identity = true -- Select a characters identity data before they have loaded in (this happens by default with multichar)
Config.DistanceGive = 4.0 -- Max distance when giving items, weapons etc.

Config.AdminLogging = false -- Logs the usage of certain commands by those with group.admin ace permissions (default is false)

Config.DisableHealthRegeneration = false -- Player will no longer regenerate health
Config.DisableVehicleRewards = false -- Disables Player Recieving weapons from vehicles
Config.DisableNPCDrops = false -- stops NPCs from dropping weapons on death
Config.DisableDispatchServices = false -- Disable Dispatch services
Config.DisableScenarios = false -- Disable Scenarios
Config.DisableWeaponWheel = false -- Disables default weapon wheel
Config.DisableAimAssist = false -- disables AIM assist (mainly on controllers)
Config.DisableVehicleSeatShuff = false -- Disables vehicle seat shuff
Config.DisableDisplayAmmo = false -- Disable ammunition display
Config.RemoveHudComponents = {
    [1] = false, --WANTED_STARS,
    [2] = false, --WEAPON_ICON
    [3] = false, --CASH
    [4] = false, --MP_CASH
    [5] = false, --MP_MESSAGE
    [6] = false, --VEHICLE_NAME
    [7] = false, -- AREA_NAME
    [8] = false, -- VEHICLE_CLASS
    [9] = false, --STREET_NAME
    [10] = false, --HELP_TEXT
    [11] = false, --FLOATING_HELP_TEXT_1
    [12] = false, --FLOATING_HELP_TEXT_2
    [13] = false, --CASH_CHANGE
    [14] = false, --RETICLE
    [15] = false, --SUBTITLE_TEXT
    [16] = false, --RADIO_STATIONS
    [17] = false, --SAVING_GAME,
    [18] = false, --GAME_STREAM
    [19] = false, --WEAPON_WHEEL
    [20] = false, --WEAPON_WHEEL_STATS
    [21] = false, --HUD_COMPONENTS
    [22] = false, --HUD_WEAPONS
}

Config.SpawnVehMaxUpgrades = true -- admin vehicles spawn with max vehcle settings
Config.CustomAIPlates = "........" -- Custom plates for AI vehicles
-- Pattern string format
--1 will lead to a random number from 0-9.
--A will lead to a random letter from A-Z.
-- . will lead to a random letter or number, with 50% probability of being either.
--^1 will lead to a literal 1 being emitted.
--^A will lead to a literal A being emitted.
--Any other character will lead to said character being emitted.
-- A string shorter than 8 characters will be padded on the right.
