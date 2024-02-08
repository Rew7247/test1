function onCreate()
    if boyfriendName == 'pixelbfangry-new' then
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-pixel-dead-new'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'Doki-Doki/fnf_loss_sfx-pixel'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'Doki-Doki/gameOverMonika'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'Doki-Doki/gameOverEnd-pixel'); --put in mods/music/
end
end