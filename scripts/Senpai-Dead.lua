function onCreate()
    if boyfriendName == 'playablesenpai' then
	setPropertyFromClass('GameOverSubstate', 'characterName', 'playablesenpai'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'Doki-Doki/fnf_loss_sfx-Senpai'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'Doki-Doki/gameOverSenpai'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'Doki-Doki/gameOverEnd-pixel'); --put in mods/music/
end
end