function onCreate()
    if boyfriendName == 'monika-playable' then
	setPropertyFromClass('GameOverSubstate', 'characterName', 'gameover-generic'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'Doki-Doki/fnf_loss_sfx-doki'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'Doki-Doki/gameOverMonika'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'Doki-Doki/gameOverEndMonika'); --put in mods/music/
end
end