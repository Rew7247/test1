function onCreatePost()
    if dadName == 'bigmonika-dress' then
        addHaxeLibrary('FlxSound', 'flixel.system')
        runHaxeCode([[
            game.vocals = new FlxSound().loadEmbedded(Paths.returnSound('songs', Paths.formatToSongPath("Epiphany") + '/Voices_Lyrics'));
            FlxG.sound.list.add(game.vocals);
        ]])
    else
        addHaxeLibrary('FlxSound', 'flixel.system')
        runHaxeCode([[
            game.vocals = new FlxSound().loadEmbedded(Paths.returnSound('songs', Paths.formatToSongPath("Epiphany") + '/Voices'));
            FlxG.sound.list.add(game.vocals);
        ]])
    end
end