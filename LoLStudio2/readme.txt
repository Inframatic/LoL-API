LOLSTUDIO2 2.3.0.1
==================
LoLStudio is not only an offline League of Legends data manger. It helps you live a better life,
get plenty of women and survive the Zombie apocalypse. It's free and runs without an installation.

What is LoLStudio?
With this software you can browse League of Legends champions and items offline. It allows you to
easily filter, sort and categorize all the relevant information. LoLStudio also allows you to create
item builds for all your favorite champions and they will even show up in the game itself.

How does it work?
All the data is fully automatically downloaded, verified and applied. Every piece of information
is kept in an easy to understand and easy to modify data folder. Everyone can add, remove and update
all the information with a simple text editor and share it with the community. You don't need to
have Leagoe of Legends installed for LoLStudio to work.

Why is it free?
I wrote this software for myself in my spare time. Actually I wanted to get more comfortable with
Visual C# and what better way to achieve this is there but to create something fun, useful and exiting.
The result was much better than I anticipated so I decided to share it with the internet.

Is it legal?
Sure it is. All the information and pictures are originally collected from the official site. The method
to get the items sets to appear in the game was implemented by Riot themselves. I simply use what they
have given me.

Your english sucks
Fair enough. Let's see how good your french, german and italian is. English not my first language.


KNOWN ISSUES
============
-	If the Data or League of Legends folder is renamed, deleted or moved while LoLStudio is running, it may crash.
	Don�t do that. What is wrong with you?

 
HISTORY
========
V2.3.0.1 GUI
	-	Well, everything is changed. Almost. It may look familiar but the software was completely rewritten
	-	It obviously now supports the new League of Legends GUI introduced in the most recent patch
	-	You can freely create new item sets for all gameplay modes or one set for all of them
	-	Item sets can be rearranged, moved, deleted, copied and enabled/disabled on a whim
	-	I have greatly expanded the sorting functionality for both, items and champions
	-	You can now record the amount of times you have played a champion, won with him and had fun doing so
	-	This information is used by LoLStudio to sort your champion list and use the new statistics feature
	-	Yes, there is now a statistics feature to list all your champions according to your preferences
	-	Champion and Item categories can now be excluded in the filter with a right mouse button click
	-	I have added various hints and help popups to the GUI for the most important stuff
	-	A verbose logging option has been added that might be helpful if you run into troubles
	-	Missing images will now be replaced with descriptive text in order to discern between them
	-	Images are therefore no longer needed or necessary in order to use LoLStudio to its full extend
	-	Champions now have tooltips that show you how you performed with them in the past
	-	The champion portrait now shows automatically calculating statisticts for all 20 levels
	-	I have added player and opponents tips as well as the Riot power classification to the portrait
	-	LoLStudio now has a new companion... drum roll ... the Launcher
	-	The Launcher not only sounds like a superhero he is also capable of updating all your cowardly data
	-	Automatic proxy detection and authentication has been added to the launcher so it should just work
	-	This means, that LoLStudio is now completely free of any online functionality for the paranoid people
	
V2.2 Zed
	-	Champion and item filters can now be inverted. A box with a checkmark means "show me all items
		that have this element". A filled out box means "hide all items that have this element".
	-	I have reworket the options. You can now choose the icon size for champions and items.
	-	You can now also enable LoLStudio to autoload the data at startup and if you change options.
	-	The history box in the champion profile is now resizing automatically to the lenght of the text.
	-	Since the Riot update is gone, so is now the code and with it the required dll file.
	-	There are also a few bugfixes for stuff that probably wouldn't have happened anyway but what can I do.

V2.1 Zed
	-	The Riot update is gone. Instead of yelling at them constantly for not updating their own damn website
		I've decided to put on my disappointed face and rewrite half of my code. Oh the joy. However, the new
		solution is better in my opinion. Everyone can now create an all-in-one update file and share it with
		everyone else. Currently I'm providing and updating this file. The pictures and images are still
		downloaded from Riot or LoL Wiki. I don't have the bandwith to host them too.
	-	In order to make it work I had to change the format of the format of the xml slightly
	-	New safety feature for missing pictures. If a picture can't be loaded, a replacement is used.
	-	Riot Default item sets can't be changed anymore
	-	Other small things you probably don't care about

V2.0 Elise
    -	Well, everything is new and there is no history
    -	Nope, nothing at all �


Quick Guide for new champions
==============================
Since LoLStudio relies on Riot to update their website but they usually don't here is what you have
to do once a new champion is released to get it working imediately with the item sets:

- Go to the data folder and create a new subfolder with the name of the new champion
- Copy over the champion.xml from an existing champion and nothing else
- Open the champion.xml in your new folder in a text editor
- Change the number between <id></id> to a high, random number (<id>666</id>)
- Change the text inside <displayName></displayName> to the new champion (<displayName>Justin Bieber</displayName>)
- Change the text inside <name></name> to item folder name (<name>justinbieber</name>)
- This name is usually the champion name without special characters or whitespaces but better check lol wiki
- Save the file and you're done. Well, all the information is still wrong but at least you can use builds.


Data Structure
==============
Everything must be located within one folder that is chosen in the options tab of LoLStudio. We will
call this the data folder. In this data folder every champion and item is located in its own subfolder.
You could actually make more subfolders and categorize or group stuff together anyway you want. I would
however strongly advise to always keep all the data for one champion or item in it's own dedicated
subfolder. I will explain the structure based on the way I currently like to organize the data. Your
mileage may vary.

Please note, that the launcher will attempt to mirror the file structure on the update servers. If
you change everything around, then the Launcher will download most of the stuff he isn't finding anymore
from the internet. It works fine though if you keep the current structure.

Every value in the xml and every file will be checked while loading. If anything is wrong the item or
champion will be discarded. See the log for the reason why. Champions often fail to load when an item
they use also failed to load. So check the items first. Text field can be blanked out like this:
<fieldname />. However, better use this format: <fieldname> </fieldname>. A whitespace basically.

champion.xml
	<id>
		Number. Very important and must be unique. This number is used internally to reference the data.
	<name>
		Text. The most important field. This references to the folder name the recommended item set must be in.
	<displayName>
		Text. This is the name of the champion used in the interface.
	<title>
		Text. Champion title.
	<iconPath>
		Filename. Name of the small icon image.
	<portraitPath>
		Filename. Name of the large image.
	<tags>
		Text. This is used to sort and filter champions.
	<description>
		Text. Champion history.
	<quote>
		Text. Quote about the champion.
	<quoteAuthor>
		Text. origin of the quote.	
	<range> 
	<moveSpeed>
	<armorBase>
	<armorLevel>
	<manaBase>
	<manaLevel>
	<criticalChanceBase>
	<criticalChanceLevel>
	<manaRegenBase>
	<manaRegenLevel>
	<healthRegenBase>
	<healthRegenLevel>
	<magicResistBase>
	<magicResistLevel>
	<healthBase>
	<healthLevel>
	<attackBase>
	<attackLevel>
		Number. Champion statistics. Only use numbers. Fractions allowed.	
	<ratingDefense>
	<ratingMagic>
	<ratingDifficulty>
	<ratingAttack>
		Number. 1 to 10 the power of the champion in various fields of expertise. Used for sorting.	
	<tips>
		Text. Multiple tips for players seperated by the "*" character.
	<opponentTips>
		Text. Multiple tips for opponents seperated by the "*" character.
	<date>
		Number. Always 14 numbers in the format YYYYMMDDhhmmss.
	<abilities>
		<Ability>
			<rank>
				Number. Usually 1 to 5 representing the order of abilities.
			<name>
				Text. Name of the ability.
			<cost>
				Text. Mana cost.
			<cooldown>
				Text. Cooldown.
			<iconPath>
				Filename. name of the icon image.
			<range>
				Text. Range of the ability.
			<effect>
				Text. Effect of the ability.
			<description>
				Text. Description of the ability.
		</Ability>
	</abilities>

	
item.xml	
	<id>
		Number. Very important and must be unique. This number is used internally to reference the data.
	<name>
		Text. name of the item.
	<description>
		Text. Description of the item.
	<iconPath>
		Filename. name of the icon image.
	<price>
		Number. Upgrade price of the item, not the full price.
	<flatHPPoolMod>
	<flatMPPoolMod>
	<percentHPPoolMod>
	<percentMPPoolMod>
	<flatHPRegenMod>
	<percentHPRegenMod>
	<flatMPRegenMod>
	<percentMPRegenMod>
	<flatArmorMod>
	<percentArmorMod>
	<flatAttackDamageMod>
	<percentAttackDamageMod>
	<flatAbilityPowerMod>
	<percentAbilityPowerMod>
	<flatMovementSpeedMod>
	<percentMovementSpeedMod>
	<flatAttackSpeedMod>
	<percentAttackSpeedMod>
	<flatDodgeMod>
	<percentDodgeMod>
	<flatCritChanceMod>
	<percentCritChanceMod>
	<flatCritDamageMod>
	<percentCritDamageMod>
	<flatMagicResistMod>
	<percentMagicResistMod>
	<flatEXPBonus>
	<percentEXPBonus>
		Number. Item statistics. Only use numbers. Fractions allowed.
	<epicness>
		Number. 0 to 2. 0 being bottom tier item, 2 being top tier item.
	<date>
		Number. Always 14 numbers in the format YYYYMMDDhhmmss.
	<recipesInto>
		<Recipe>
			<recipeItemId>
				Number. Not important here.
			<buildsToItemId>
				Number. References the parents of the current item.
		</Recipe>
	</recipesInto>
		<recipesFrom>
		<Recipe>
			<recipeItemId>
				Number. References the children of the current item.
			<buildsToItemId>
				Number. Not important here.
		</Recipe>
	</recipesFrom>
	<categories>
		<Category>
			<name>
				Text. Category of the item for filtering purposes.
		</Category>
	</categories>