﻿package classes.Characters
{
	import classes.Creature;
	import classes.GLOBAL;
	import classes.Items.Guns.*
	import classes.Items.Protection.ImprovisedShield;
	import classes.Items.Melee.RaskvelWrench;
	import classes.Items.Miscellaneous.*
	import classes.kGAMECLASS;
	import classes.rand;
	import classes.GameData.CodexManager;
	
	public class Gianna extends Creature
	{
		//constructor
		public function Gianna()
		{
			this._latestVersion = 1;
			this.version = _latestVersion;
			this._neverSerialize = false;
			
			this.short = "Gianna";
			this.originalRace = "companion droid";
			this.personality = 50;
			this.a = "";
			this.capitalA = "";
			this.long = "";
			this.customBlock = "Your attack fails to damage the 'bot.";
			this.plural = false;
			this.lustVuln = 0;
			this.meleeWeapon.damage = 5;
			this.meleeWeapon.attack = 5;
			this.meleeWeapon.longName = "tentacle";
			this.meleeWeapon.attackVerb = "smack";
			this.meleeWeapon.hasRandomProperties = true;

			this.rangedWeapon.damage = 10;
			this.rangedWeapon.attack = 10;
			this.rangedWeapon.longName = "shotgun";
			this.rangedWeapon.attackVerb = "shot";
			this.rangedWeapon.hasRandomProperties = true;
			
			this.armor.longName = "latex";
			this.armor.defense = 1;
			this.armor.hasRandomProperties = true;
			
			this.shield = new ImprovisedShield();

			this.physiqueRaw = 20;
			this.reflexesRaw = 20;
			this.aimRaw = 15;
			this.intelligenceRaw = 20;
			this.willpowerRaw = 7;
			this.libidoRaw = 80;
			this.shieldsRaw = 0;
			this.energyRaw = 100;
			this.lustRaw = 50;
			this.resistances = new Array(1,1,1,1,1,1,1.4,1);
			this.XPRaw = 250;
			this.level = 4;
			this.credits = 100;
			this.HPMod = -10;
			this.HPRaw = this.HPMax();
			this.shieldsRaw = this.shieldsMax();

			this.femininity = 59;
			this.eyeType = GLOBAL.TYPE_HUMAN;
			this.eyeColor = "blue";
			this.tallness = 68;
			this.thickness = 40;
			this.tone = 29;
			this.hairColor = "black";
			this.hairType = GLOBAL.TYPE_HUMAN;
			this.scaleColor = "white";
			this.furColor = "black";
			this.hairLength = 30;
			
			this.beardLength = 0;
			this.beardStyle = 0;
			this.skinType = GLOBAL.SKIN_TYPE_SKIN;
			this.skinTone = "white";
			this.skinFlags = new Array();
			this.faceType = GLOBAL.TYPE_HUMAN;
			this.faceFlags = new Array();
			this.tongueType = GLOBAL.TYPE_HUMAN;
			this.lipMod = 1;
			this.earType = 0;
			this.antennae = 0;
			this.antennaeType = GLOBAL.TYPE_HUMAN;
			this.horns = 0;
			this.hornType = 0;
			this.armType = GLOBAL.TYPE_HUMAN;
			this.gills = false;
			this.wingType = GLOBAL.TYPE_HUMAN;
			this.legType = GLOBAL.TYPE_HUMAN;
			this.legCount = 2;
			this.legFlags = [GLOBAL.FLAG_PLANTIGRADE];
			//0 - Waist
			//1 - Middle of a long tail. Defaults to waist on bipeds.
			//2 - Between last legs or at end of long tail.
			//3 - On underside of a tail, used for driders and the like, maybe?
			this.genitalSpot = 0;
			this.tailType = GLOBAL.TYPE_HUMAN;
			this.tailCount = 0;
			this.tailFlags = new Array();
			//Used to set cunt or dick type for cunt/dick tails!
			this.tailGenitalArg = 0;
			//tailGenital:
			//0 - none.
			//1 - cock
			//2 - vagina
			this.tailGenital = 0;
			//Tail venom is a 0-100 slider used for tail attacks. Recharges per hour.
			this.tailVenom = 0;
			//Tail recharge determines how fast venom/webs comes back per hour.
			this.tailRecharge = 5;
			//hipRating
			//0 - boyish
			//2 - slender
			//4 - average
			//6 - noticable/ample
			//10 - curvy//flaring
			//15 - child-bearing/fertile
			//20 - inhumanly wide
			this.hipRatingRaw = 9;
			//buttRating
			//0 - buttless
			//2 - tight
			//4 - average
			//6 - noticable
			//8 - large
			//10 - jiggly
			//13 - expansive
			//16 - huge
			//20 - inconceivably large/big/huge etc
			this.buttRatingRaw = 9;
			//No dicks here!
			this.cocks = new Array();
			this.vaginas = new Array();

			this.timesCum = 999999;

			this.elasticity = 8;
			//Fertility is a % out of 100. 
			//this.fertilityRaw = 0;
			this.createStatusEffect("Infertile");
			this.clitLength = .5;
			this.pregnancyMultiplierRaw = 1;

			this.breastRows[0].breastRatingRaw = 8;
			this.nippleColor = "black";
			this.milkMultiplier = 0;
			this.milkType = GLOBAL.FLUID_TYPE_MILK;
			//The rate at which you produce milk. Scales from 0 to INFINITY.
			this.milkRate = 0;
			this.ass.wetnessRaw = 0;
			this.ass.loosenessRaw = 1;
			this.ass.bonusCapacity += 10;
			this.createVagina();
			this.vaginas[0].wetness(5,true);
			this.vaginas[0].looseness(1,true);
			this.vaginas[0].vaginaColor = "black";
			this._isLoading = false;
		}
	}
}