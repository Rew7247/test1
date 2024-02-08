function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'dual-demise/FinaleBG_1', -650, 100);
	
		scaleObject('stageback', 1.5, 1.2);

	makeLuaSprite('stageback2', 'dual-demise/FinaleBG_2', -650, -50);
	setLuaSpriteScrollFactor('stageback2', 0.9, 0.9);
		scaleObject('stageback2', 2.2, 2);
		
	makeLuaSprite('stageback3', 'dual-demise/FinaleFG', -563, 50);
	
		scaleObject('stageback3', 1.5, 1.3);
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

	end

	addLuaSprite('stageback', false);
	addLuaSprite('stageback2', false);
	addLuaSprite('stageback3', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
