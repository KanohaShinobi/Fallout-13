//Please use mob or src (not usr) in these procs. This way they can be called in the same fashion as procs.
/client/verb/wiki()
	set name = "wiki"
	set desc = "Visit the wiki."
	set hidden = 1
	if(config.wikiurl)
		if(alert("This will open the wiki in your browser. Are you sure?",,"Yes","No")=="No")
			return
		src << link("http://falloutanewdawn.ga/wiki/index.php/Main_Page")
	return

/client/verb/forum()
	set name = "forum"
	set desc = "Visit the forum."
	set hidden = 1
	if(config.forumurl)
		if(alert("This will open the forum in your browser. Are you sure?",,"Yes","No")=="No")
			return
		src << link("https://falloutanewdawn.ga/forums/")
	return

/client/verb/rules()
	set name = "rules"
	set desc = "Show server rules."
	set hidden = 1
	if(config.rulesurl)
		if(alert("This will open the rules document in your browser. Are you sure?",,"Yes","No")=="No")
			return
		src << link("https://falloutanewdawn.ga/forums/viewtopic.php?f=4&p=2&sid=b2a92ace2d6f8733bad69651aabac916")
	return

/client/verb/github()
	set name = "discord"
	set desc = "Join the discord"
	set hidden = 1
	if(config.discord)
		if(alert("This will open a discord invite in your browser. Are you sure?",,"Yes","No")=="No")
			return
		src << link("https://discord.gg/6WvdqMF")
	return

/client/verb/reportissue()
	set name = "report-issue"
	set desc = "Report an issue"
	set hidden = 1
	if(config.bitbucket)
		if(alert("This will open the Github in your browser. Are you sure?",,"Yes","No")=="No")
			return
		src << link("https://github.com/tichys/Fallout-13/issues")
	return

/client/verb/hotkeys_help()
	set name = "hotkeys-help"
	set category = "OOC"

	var/adminhotkeys = {"<font color='purple'>
Admin:
\tF6 = admin-pm
\tF7 = admin chat (asay)
\tF8 = Invisimin
\tCtrl+F8 = Stealth-Mode
\tF9 = aghost
\tF10 = player-panel
\tF11 = buildmode
</font>"}

	mob.hotkey_help()

	if(holder)
		to_chat(src, adminhotkeys)

/client/verb/changelog()
	set name = "Changelog"
	set category = "OOC"
	getFiles(
		'html/88x31.png',
		'html/bug-minus.png',
		'html/cross-circle.png',
		'html/hard-hat-exclamation.png',
		'html/image-minus.png',
		'html/image-plus.png',
		'html/music-minus.png',
		'html/music-plus.png',
		'html/tick-circle.png',
		'html/wrench-screwdriver.png',
		'html/spell-check.png',
		'html/burn-exclamation.png',
		'html/chevron.png',
		'html/chevron-expand.png',
		'html/changelog.css',
		'html/changelog.html'
		)
	src << browse('html/changelog.html', "window=changes;size=675x650")
	if(prefs.lastchangelog != changelog_hash)
		prefs.lastchangelog = changelog_hash
		prefs.save_preferences()
		winset(src, "infowindow.changelog", "font-style=;")


/mob/proc/hotkey_help()
	//h = talk-wheel has a nonsense tag in it because \th is an escape sequence in BYOND.
	var/hotkey_mode = {"<font color='purple'>
Hotkey-Mode: (hotkey-mode must be on)
\tTAB = toggle hotkey-mode
\ta = left
\ts = down
\td = right
\tw = up
\tq = drop
\te = equip
\tr = throw
\tm = me
\tt = say
\t<B></B>h = talk-wheel
\to = OOC
\tb = resist
\tx = swap-hand
\tz = activate held object (or y)
\tf = cycle-intents-left
\tg = cycle-intents-right
\t1 = help-intent
\t2 = disarm-intent
\t3 = grab-intent
\t4 = harm-intent
\tNumpad = Body target selection (Press 8 repeatedly for Head->Eyes->Mouth)
</font>"}

	var/other = {"<font color='purple'>
Any-Mode: (hotkey doesn't need to be on)
\tCtrl+a = left
\tCtrl+s = down
\tCtrl+d = right
\tCtrl+w = up
\tCtrl+q = drop
\tCtrl+e = equip
\tCtrl+r = throw
\tCtrl+b = resist
\tCtrl+h = talk-wheel
\tCtrl+o = OOC
\tCtrl+x = swap-hand
\tCtrl+z = activate held object (or Ctrl+y)
\tCtrl+f = cycle-intents-left
\tCtrl+g = cycle-intents-right
\tCtrl+1 = help-intent
\tCtrl+2 = disarm-intent
\tCtrl+3 = grab-intent
\tCtrl+4 = harm-intent
\tDEL = pull
\tINS = cycle-intents-right
\tHOME = drop
\tPGUP = swap-hand
\tPGDN = activate held object
\tEND = throw
\tCtrl+Numpad = Body target selection (Press 8 repeatedly for Head->Eyes->Mouth)
</font>"}

	to_chat(src, hotkey_mode)
	to_chat(src, other)

/mob/living/silicon/robot/hotkey_help()
	//h = talk-wheel has a nonsense tag in it because \th is an escape sequence in BYOND.
	var/hotkey_mode = {"<font color='purple'>
Hotkey-Mode: (hotkey-mode must be on)
\tTAB = toggle hotkey-mode
\ta = left
\ts = down
\td = right
\tw = up
\tq = unequip active module
\tm = me
\tt = say
\t<B></B>h = talk-wheel
\to = OOC
\tx = cycle active modules
\tb = resist
\tz = activate held object (or y)
\tf = cycle-intents-left
\tg = cycle-intents-right
\t1 = activate module 1
\t2 = activate module 2
\t3 = activate module 3
\t4 = toggle intents
</font>"}

	var/other = {"<font color='purple'>
Any-Mode: (hotkey doesn't need to be on)
\tF1 = admin help (ahelp)
\tF2 = OOC
\tF3 = LOOC
\tF4 = say
\tF5 = emote (me)
\tCtrl+a = left
\tCtrl+s = down
\tCtrl+d = right
\tCtrl+w = up
\tCtrl+q = unequip active module
\tCtrl+x = cycle active modules
\tCtrl+b = resist
\tCtrl+h = talk-wheel
\tCtrl+o = OOC
\tCtrl+z = activate held object (or Ctrl+y)
\tCtrl+f = cycle-intents-left
\tCtrl+g = cycle-intents-right
\tCtrl+1 = activate module 1
\tCtrl+2 = activate module 2
\tCtrl+3 = activate module 3
\tCtrl+4 = toggle intents
\tDEL = pull
\tINS = toggle intents
\tPGUP = cycle active modules
\tPGDN = activate held object
</font>"}

	to_chat(src, hotkey_mode)
	to_chat(src, other)

// Needed to circumvent a bug where .winset does not work when used on the window.on-size event in skins.
// Used by /datum/html_interface/nanotrasen (code/modules/html_interface/nanotrasen/nanotrasen.dm)
/client/verb/_swinset(var/x as text)
	set name = ".swinset"
	set hidden = 1
	winset(src, null, x)
