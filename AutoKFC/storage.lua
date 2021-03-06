local storageChest = "minecraft:ironchest_diamond_7100"
local trashChest = "minecraft:ender chest_352"
local storageSlots = {
  ["harvestcraft:potitem"] = 1,
  ["harvestcraft:bakewareitem"] = 2,
  ["harvestcraft:cuttingboarditem"] = 3,
  ["harvestcraft:mixingbowlitem"] = 4,
  ["harvestcraft:saucepanitem"] = 5,
  ["harvestcraft:mortarandpestleitem"] = 6,
  ["harvestcraft:juiceritem"] = 7,
  ["harvestcraft:skilletitem"] = 8,
  ["minecraft:bucket"] = 9,
  ["minecraft:water_bucket"] = 10,

  ["harvestcraft:saltitem"] = 25,
  ["minecraft:milk_bucket"] = 26,
  ["harvestcraft:freshmilkitem"] = 27,
  ["harvestcraft:freshwateritem"] = 28,
  ["harvestcraft:heavycreamitem"] = 29,
  ["harvestcraft:butteritem"] = 30,
  ["harvestcraft:bubblywateritem"] = 31,
  ["harvestcraft:spiceleafitem"] = 32,
  ["minecraft:reeds"] = 33,
  ["minecraft:sugar"] = 34,
  ["harvestcraft:flouritem"] = 35,
  ["harvestcraft:batteritem"] = 36,
  ["minecraft:egg"] = 37,
  ["harvestcraft:spiceleafseeditem"] = 38,
  ["harvestcraft:oliveoilitem"] = 39,
  ["harvestcraft:peppercornitem"] = 40,
  ["harvestcraft:blackpepperitem"] = 41,
  ["harvestcraft:cornitem"] = 42,
  ["harvestcraft:cornmealitem"] = 43,
  ["harvestcraft:soybeanitem"] = 44,
  ["harvestcraft:silkentofuitem"] = 45,
  ["harvestcraft:firmtofuitem"] = 46,
  ["harvestcraft:doughitem"] = 47,
  ["harvestcraft:stockitem"] = 48,
  ["minecraft:dye"] = 49,
  ["harvestcraft:cocoapowderitem"] = 50,
  ["harvestcraft:chocolatemilkitem"] = 51,
  ["harvestcraft:onionitem"] = 52,
  
  ["minecraft:potato"] = 61,
  ["minecraft:baked_potato"] = 62,
  ["harvestcraft:friesitem"] = 63,
  ["harvestcraft:mashedpotatoesitem"] = 64,
  ["harvestcraft:butteredpotatoitem"] = 65,
  ["harvestcraft:colasodaitem"] = 66,
  ["minecraft:chicken"] = 67,
  ["harvestcraft:rawtofaconitem"] = 68,
  ["harvestcraft:cookedtofaconitem"] = 69,
  ["harvestcraft:gritsitem"] = 70,
  ["harvestcraft:biscuititem"] = 71,
  ["harvestcraft:gravyitem"] = 72,
  ["harvestcraft:biscuitsandgravyitem"] = 73,
  ["minecraft:bread"] = 74,
  ["harvestcraft:toastitem"] = 75,
  ["harvestcraft:friedchickenitem"] = 76,
  ["harvestcraft:potatocakesitem"] = 77,
  ["harvestcraft:friedeggitem"] = 78,

  ["harvestcraft:southernstylebreakfastitem"] = 97,
  ["harvestcraft:heartybreakfastitem"] = 98,
  ["harvestcraft:friedfeastitem"] = 99,
  ["minecraft:coal"] = 108
  
}

local crafts = {}

crafts.water = {
	[1] = function (self,storage)
		local slave = peripheral.wrap("turtle_3749")
		slave.pullItems(storage,storageSlots["minecraft:bucket"],1,1)
		sleep(0.25)
		slave.pushItems(self,1,1,1)
	end,

	["output"] = "minecraft:water_bucket"
}

crafts.milk = {
	[1] = function (self,storage)
		local slave = peripheral.wrap("turtle_3767")
		slave.pullItems(storage,storageSlots["minecraft:bucket"],1,1)
		sleep(0.25)
		slave.pushItems(self,1,1,1)
	end,

	["output"] = "minecraft:milk_bucket"
}

crafts.salt = {
[1] = "harvestcraft:potitem", [2] = "harvestcraft:freshwateritem", 

["output"] = "harvestcraft:saltitem"
}

crafts.fries = {
[1] = "harvestcraft:bakewareitem", [2] = "minecraft:potato", [3] = "harvestcraft:saltitem", 

["output"] = "harvestcraft:friesitem"
}

crafts.bakedpotato = {
	[1] = "minecraft:potato", [2] = "harvestcraft:bakewareitem",

	["output"] = "minecraft:baked_potato"
}

crafts.freshmilk = {
	[1] = "minecraft:milk_bucket",

	["output"] = "harvestcraft:freshmilkitem"
}

crafts.cream = {
	[1] = "harvestcraft:mixingbowlitem", [2] = "harvestcraft:freshmilkitem",

	["output"] = "harvestcraft:heavycreamitem"
}

crafts.butter = {
	[1] = "harvestcraft:saucepanitem", [2] = "harvestcraft:heavycreamitem", [3] = "harvestcraft:saltitem",

	["output"] = "harvestcraft:butteritem"
}

crafts.butterpotatoes = {
	[1] = "minecraft:baked_potato", [2] = "harvestcraft:butteritem",

	["output"] = "harvestcraft:butteredpotatoitem"
}

crafts.mashedpotato = {
	[1] = "harvestcraft:mixingbowlitem", [2] = "harvestcraft:butteredpotatoitem", [3] = "harvestcraft:saltitem",

	["output"] = "harvestcraft:mashedpotatoesitem"
}

crafts.freshwater = {
	[1] = "minecraft:water_bucket",

	["output"] = "harvestcraft:freshwateritem"
}

crafts.bubblywater = {
	[1] = "harvestcraft:potitem", [2] = "harvestcraft:freshwateritem", [3] = "harvestcraft:freshwateritem",

	["output"] = "harvestcraft:bubblywateritem"
}

crafts.sugar = {
	[1] = "minecraft:reeds",

	["output"] = "minecraft:sugar"
}

crafts.cola = {
	[1] = "harvestcraft:potitem", [2] = "harvestcraft:bubblywateritem", [3] = "minecraft:sugar", [4] = "harvestcraft:spiceleafitem",

	["output"] = "harvestcraft:colasodaitem"
}

crafts.flour = {
	[1] = "harvestcraft:mortarandpestleitem", [2] = "minecraft:potato",

	["output"] = "harvestcraft:flouritem" 
}

crafts.batter = {
	[1] = "harvestcraft:mixingbowlitem", [2] = "harvestcraft:flouritem", [3] = "minecraft:egg",

	["output"] = "harvestcraft:batteritem"
}

crafts.seeds = {
	[1] = "harvestcraft:spiceleafitem",

	["output"] = "harvestcraft:spiceleafseeditem"
}

crafts.oil = {
	[1] = "harvestcraft:juiceritem", [2] = "harvestcraft:spiceleafseeditem", [3] = "harvestcraft:spiceleafseeditem",

	["output"] = 'harvestcraft:oliveoilitem'
}

crafts.pepper = {
	[1] = "harvestcraft:mortarandpestleitem", [2] = "harvestcraft:peppercornitem",


	["output"] = "harvestcraft:blackpepperitem"
}

crafts.kfcbucket = {
	[1] = "harvestcraft:potitem", [2] = "minecraft:chicken", [3] = "harvestcraft:batteritem", 
	[4] = "harvestcraft:spiceleafitem", [5] = "harvestcraft:blackpepperitem", [6] = "harvestcraft:oliveoilitem",

	["output"] = "harvestcraft:friedchickenitem" 
}

crafts.feast = {
	[1] = "harvestcraft:cuttingboarditem", [2] = "harvestcraft:friedchickenitem", [3] = "harvestcraft:friesitem",
	[4] = "harvestcraft:mashedpotatoesitem", [5] = "harvestcraft:colasodaitem",

	["output"] = "harvestcraft:friedfeastitem"
}

crafts.cornmeal = {
	[1] = "harvestcraft:mortarandpestleitem", [2] = "harvestcraft:cornitem",


	["output"] = "harvestcraft:cornmealitem"
}

crafts.tofacon = {
	[1] = "harvestcraft:cuttingboarditem", [2] = "harvestcraft:firmtofuitem", [3] = "harvestcraft:oliveoilitem",
	[4] = "harvestcraft:saltitem", [5] = "harvestcraft:flouritem", [6] = "minecraft:sugar",

	["output"] = "harvestcraft:rawtofaconitem"
}

crafts.tofaconCooked = {
	[1] = "harvestcraft:rawtofaconitem",

	["output"] = "harvestcraft:cookedtofaconitem"	
}

crafts.dough = {
	[1] = "harvestcraft:mixingbowlitem", [2] = "harvestcraft:freshwateritem", [3] = "harvestcraft:flouritem", 
	[4] = "harvestcraft:saltitem",

	["output"] = "harvestcraft:doughitem"
}

crafts.bread = {
	[1] = "harvestcraft:bakewareitem", [2] = "harvestcraft:doughitem",

	["output"] = "minecraft:bread"
}

crafts.toast = {
	[1] = "harvestcraft:bakewareitem", [2] = "minecraft:bread", [3] = "harvestcraft:butteritem",

	["output"] = "harvestcraft:toastitem"
}

crafts.biscuit = {
	[1] = "harvestcraft:bakewareitem", [2] = "harvestcraft:doughitem", [3] = "harvestcraft:butteritem",

	["output"] = "harvestcraft:biscuititem"
}

crafts.stock = {
	[1] = "harvestcraft:potitem", [2] = "harvestcraft:cornitem",

	["output"] = "harvestcraft:stockitem"
}

crafts.gravy = {
	[1] = "harvestcraft:stockitem", [2] = "harvestcraft:flouritem",

	["output"] = "harvestcraft:gravyitem"
}

crafts.biscuitgravy = {
	[1] = "harvestcraft:cuttingboarditem", [2] = "harvestcraft:biscuititem", [3] = "harvestcraft:gravyitem",

	["output"] = "harvestcraft:biscuitsandgravyitem"
}

crafts.grits = {
	[1] = "harvestcraft:potitem", [2] = "harvestcraft:cornmealitem", [3] = "harvestcraft:freshmilkitem", 
	[4] = "harvestcraft:freshwateritem", [5] = "harvestcraft:saltitem",

	["output"] = "harvestcraft:gritsitem"
}

crafts.breakfast = {
	[1] = "harvestcraft:cuttingboarditem", [2] = "harvestcraft:gritsitem", [3] = "harvestcraft:biscuitsandgravyitem", 
	[4] = "harvestcraft:cookedtofaconitem", [5] = "minecraft:egg", [6] = "harvestcraft:toastitem",

	["output"] = "harvestcraft:southernstylebreakfastitem"
}

crafts.choco = {
	[1] = "harvestcraft:mortarandpestleitem", [2] = "minecraft:dye",

	["output"] = "harvestcraft:cocoapowderitem"
}

crafts.chocomilk = {
	[1] = "harvestcraft:freshmilkitem", [2] = "harvestcraft:cocoapowderitem",

	["output"] = "harvestcraft:chocolatemilkitem"
}

crafts.potatocake = {
	[1] = "harvestcraft:skilletitem", [2] = "harvestcraft:onionitem", [3] = "minecraft:potato", 
	[4] = "harvestcraft:butteritem",

	["output"] = "harvestcraft:potatocakesitem"
}

crafts.eggfried = {
	[1] = "harvestcraft:skilletitem", [2] = "minecraft:egg",

	["output"] = "harvestcraft:friedeggitem"
}

crafts.heart = {
	[1] = "harvestcraft:cookedtofaconitem", [2] = "harvestcraft:friedeggitem", [3] = "harvestcraft:toastitem",
	[4] = "harvestcraft:potatocakesitem", [5] = "harvestcraft:chocolatemilkitem",

	["output"] = "harvestcraft:heartybreakfastitem"
}

return  storageChest,storageSlots,trashChest,crafts