local xx =  430;
local yy =  400;
local xx2 = 900;
local yy2 = 450;
local ofs = 5;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

	makeLuaSprite('negro', '', 0, 0);
        makeGraphic('negro',1280,720,'000000')
	setObjectCamera('negro','other')
        doTweenAlpha('negro','negro',0, 0.1,'linear')


	makeLuaSprite('BG1', 'DDLC/clubroom/DDLCfarbg', -187, -245);
	setScrollFactor('BG1', 0.9, 0.9);
        setProperty("BG1.scale.x", 1.6);
        setProperty("BG1.scale.y", 1.6);


	makeLuaSprite('BG2', 'DDLC/clubroom/DDLCbg', -187, -245);
        setProperty("BG2.scale.x", 1.6);
        setProperty("BG2.scale.y", 1.6);


--Stage - Sayori

	makeAnimatedLuaSprite('natsuki-1', 'DDLC/bgdoki/natsuki', 1025, 170)
        addAnimationByPrefix('natsuki-1', 'idle', 'Natsu BG', 24, false);
        setProperty("natsuki-1.scale.x", 0.7);
        setProperty("natsuki-1.scale.y", 0.7);

	makeAnimatedLuaSprite('yuri-1', 'DDLC/bgdoki/yuri', -130, 45)
        addAnimationByPrefix('yuri-1', 'idle', 'Yuri BG', 24, false);
        setProperty("yuri-1.scale.x", 0.7);
        setProperty("yuri-1.scale.y", 0.7);

	setProperty('natsuki-1.visible', false);
	setProperty('yuri-1.visible', false);


--Stage - Natsuki

	makeAnimatedLuaSprite('sayori-2', 'DDLC/bgdoki/sayori', 1000, 135)
        addAnimationByPrefix('sayori-2', 'idle', 'Sayori BG', 24, false);
        setProperty("sayori-2.scale.x", 0.7);
        setProperty("sayori-2.scale.y", 0.7);

	makeAnimatedLuaSprite('yuri-2', 'DDLC/bgdoki/yuri', 75, 45)
        addAnimationByPrefix('yuri-2', 'idle', 'Yuri BG', 24, false);
        setProperty("yuri-2.scale.x", 0.7);
        setProperty("yuri-2.scale.y", 0.7);

	setProperty('sayori-2.visible', false);
	setProperty('yuri-2.visible', false);

--Stage - Yuri

	makeAnimatedLuaSprite('natsuki-3', 'DDLC/bgdoki/natsuki', 1025, 170)
        addAnimationByPrefix('natsuki-3', 'idle', 'Natsu BG', 24, false);
        setProperty("natsuki-3.scale.x", 0.7);
        setProperty("natsuki-3.scale.y", 0.7);

	makeAnimatedLuaSprite('sayori-3', 'DDLC/bgdoki/sayori', -100, 135)
        addAnimationByPrefix('sayori-3', 'idle', 'Sayori BG', 24, false);
        setProperty("sayori-3.scale.x", 0.7);
        setProperty("sayori-3.scale.y", 0.7);

	setProperty('natsuki-3.visible', false);
	setProperty('sayori-3.visible', false);


--Stage - Monika

	makeAnimatedLuaSprite('natsuki-4', 'DDLC/bgdoki/natsuki', 1025, 170)
        addAnimationByPrefix('natsuki-4', 'idle', 'Natsu BG', 24, false);
        setProperty("natsuki-4.scale.x", 0.7);
        setProperty("natsuki-4.scale.y", 0.7);

	makeAnimatedLuaSprite('yuri-4', 'DDLC/bgdoki/yuri', -130, 45)
        addAnimationByPrefix('yuri-4', 'idle', 'Yuri BG', 24, false);
        setProperty("yuri-4.scale.x", 0.7);
        setProperty("yuri-4.scale.y", 0.7);

	makeAnimatedLuaSprite('sayori-4', 'DDLC/bgdoki/sayori', 90, 135)
        addAnimationByPrefix('sayori-4', 'idle', 'Sayori BG', 24, false);
        setProperty("sayori-4.scale.x", 0.7);
        setProperty("sayori-4.scale.y", 0.7);


	setProperty('natsuki-4.visible', false);
	setProperty('yuri-4.visible', false);
	setProperty('sayori-4.visible', false);
--




	makeLuaSprite('BG3', 'DDLC/clubroom/clublights', -187, -245);
        setProperty("BG3.scale.x", 1.6);
        setProperty("BG3.scale.y", 1.6);

	makeLuaSprite('BG4', 'DDLC/clubroom/DesksFront', -185, -235);
	setScrollFactor('BG4', 1.3, 1.3);
        setProperty("BG4.scale.x", 1.6);
        setProperty("BG4.scale.y", 1.6);

	makeAnimatedLuaSprite('BG69', 'DDLC/clubroom/staticshock', 0, 0);
        addAnimationByPrefix('BG69', 'idle', 'hueh', 24, true);
	objectPlayAnimation('BG69', 'idle', true);
	setObjectCamera('BG69','other')
        setProperty('BG69.alpha',0.35)
	setProperty('BG69.visible', false);

	makeAnimatedLuaSprite('BGCAT', 'DDLC/clubroom/BakaBGDoodles', 0, 0);
        addAnimationByPrefix('BGCAT', 'idle', 'Normal Overlay', 48, true);
        addAnimationByPrefix('BGCAT', 'idle-alt', 'Rock Overlay', 48, true);
	objectPlayAnimation('BGCAT', 'idle', true);
	setObjectCamera('BGCAT','camHud')
        doTweenAlpha('BGCAT','BGCAT',0, 0.1,'linear')


	makeLuaSprite('star', 'DDLC/clubroom/YuriSparkleBG', 0, 0);
	setObjectCamera('star','camHud')

	makeLuaSprite('star2', 'DDLC/clubroom/YuriSparkleBG', 1280, 0);
	setObjectCamera('star2','camHud')

	makeLuaSprite('stars', 'DDLC/clubroom/YuriSparkleFG', 0, 0);
	setObjectCamera('stars','camHud')

	makeLuaSprite('stars2', 'DDLC/clubroom/YuriSparkleFG', 1280, 0);
	setObjectCamera('stars2','camHud')

        doTweenAlpha('stars','stars',0, 0.1,'linear')
        doTweenAlpha('stars2','stars2',0, 0.1,'linear')
        doTweenAlpha('star','star',0, 0.1,'linear')
        doTweenAlpha('star2','star2',0, 0.1,'linear')


	makeLuaSprite('rosa', 'DDLC/clubroom/vignette', 0, 0);
	setObjectCamera('rosa','camHud')
        setBlendMode('rosa','add')
        doTweenAlpha('rosa','rosa',0, 0.1,'linear')

	makeLuaSprite('b', 'DDLC/vignette', 0, 0);
	setObjectCamera('b','camHud')
        doTweenAlpha('b','b',0, 0.1,'linear')


	addLuaSprite('BG1', false);
	addLuaSprite('BG2', false);
	addLuaSprite('BG3', false);
--
	addLuaSprite('natsuki-1', false);
	addLuaSprite('yuri-1', false);
--
	addLuaSprite('sayori-2', false);
	addLuaSprite('yuri-2', false);
--
	addLuaSprite('natsuki-3', false);
	addLuaSprite('sayori-3', false);
--
	addLuaSprite('natsuki-4', false);
	addLuaSprite('sayori-4', false);
	addLuaSprite('yuri-4', false);
--
	addLuaSprite('BG4', true);
	addLuaSprite('BG69', true);
	addLuaSprite('BGCAT', true);
--
	addLuaSprite('star', false);
	addLuaSprite('star2', false);
	addLuaSprite('stars', true);
	addLuaSprite('stars2', true);
	addLuaSprite('rosa', true);

	addLuaSprite('b', true);
	addLuaSprite('negro', true);

runTimer('stars',1.5)
runTimer('star',1.5)
end
function onCreatePost()

   --makeLuaTexts
  makeLuaText('Watermark', 'Port by Thepotra Chart 6K By Felogo', -0, 0);

  
   --addLuaText
   addLuaText('Watermark')


   --Text fonts
   setTextFont('scoreTxt', 'Calibri Regular.ttf')
   setTextFont('healthCounter', 'Calibri Regular.ttf')
   setTextFont('timeTxt', 'Calibri Regular.ttf')
   setTextFont('botplayTxt', 'Calibri Regular.ttf')
   setTextFont('judgementCounter', 'Calibri Regular.ttf')
   setTextFont('Watermark', 'Calibri Regular.ttf');

   
   --Text sizes
   setTextSize('Watermark', 15);



   precacheSound('intro3')
   precacheSound('intro2')
   precacheSound('intro1')
   precacheSound('introGo')
   setProperty('introSoundsSuffix', '-Thepotra')
end
function onCountdownTick(counter)
	if counter == 0 then
		playSound('intro3')

	elseif counter == 1 then
		playSound('intro2')
                setProperty('countdownReady.visible', false)
                setProperty('2.visible', true)
                setProperty('1.visible', false)
                setProperty('go.visible', false)
        	makeLuaSprite('2', 'hud/ready', 120, 80);
          	setObjectCamera('2','hud')
	        addLuaSprite('2', true);
		doTweenAlpha('2','2',0, 0.5,'linear')
		setProperty("2.scale.x", 0.5);
	        setProperty("2.scale.y", 0.5);


	elseif counter == 2 then
		playSound('intro1')
                setProperty('countdownSet.visible', false)
                setProperty('2.visible', false)
                setProperty('1.visible', true)
                setProperty('go.visible', false)
        	makeLuaSprite('1', 'hud/set', 120, 80);
          	setObjectCamera('1','hud')
	        addLuaSprite('1', true);
		doTweenAlpha('1','1',0, 0.5,'linear')
		setProperty("1.scale.x", 0.5);
		setProperty("1.scale.y", 0.5);


	elseif counter == 3 then
		playSound('introGo')
                setProperty('countdownGo.visible', false)
                setProperty('2.visible', false)
                setProperty('1.visible', false)
                setProperty('go.visible', true)
        	makeLuaSprite('go', 'hud/go', 120, 80);
          	setObjectCamera('go','hud')
	        addLuaSprite('go', true);
		doTweenAlpha('go','go',0, 1,'linear')
		setProperty("go.scale.x", 0.5);
		setProperty("go.scale.y", 0.5);


    end
end
function onBeatHit()
       if curBeat % 2== 0 then

        objectPlayAnimation('natsuki-1', 'idle', true);
        objectPlayAnimation('yuri-1', 'idle', true);
--
        objectPlayAnimation('sayori-2', 'idle', true);
        objectPlayAnimation('yuri-2', 'idle', true);
--
        objectPlayAnimation('natsuki-3', 'idle', true);
        objectPlayAnimation('sayori-3', 'idle', true);
--
        objectPlayAnimation('natsuki-4', 'idle', true);
        objectPlayAnimation('sayori-4', 'idle', true);
        objectPlayAnimation('yuri-4', 'idle', true);

end
end
function onUpdate()


	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end
function onEvent(name,value1,value2)
	if name == 'Thepotra' then 
		
		if value1 == 'sad' then
		setProperty('BG69.visible', true);
	        setProperty('defaultCamZoom', 2.0)


                end

		if value1 == 'sad-2' then
		setProperty('BG69.visible', false);
	        setProperty('defaultCamZoom',0.75)

                end

		if value1 == 'cat' then
   	 	doTweenAlpha('BGCAT','BGCAT',1, 2.5,'linear')
		objectPlayAnimation('BGCAT', 'idle', true);
		end

		if value1 == 'cat-2' then
		objectPlayAnimation('BGCAT', 'idle-alt', true);
                end

		if value1 == 'cat-3' then
   	 	doTweenAlpha('BGCAT','BGCAT',0, 2.5,'linear')


                end

		if value1 == 'stars' then
	        doTweenAlpha('stars-','stars',1, 0.5,'linear')
	        doTweenAlpha('stars2-','stars2',1, 0.5,'linear')
        	doTweenAlpha('star-','star',1, 0.5,'linear')
        	doTweenAlpha('star2-','star2',1, 0.5,'linear')
        	doTweenAlpha('rosa','rosa',1, 0.5,'linear')
                end

		if value1 == 'stars-2' then
	        doTweenAlpha('stars-','stars',0, 1.5,'linear')
	        doTweenAlpha('stars2-','stars2',1, 1.5,'linear')
        	doTweenAlpha('star-','star',0, 1.5,'linear')
        	doTweenAlpha('star2-','star2',0, 1.5,'linear')
        	doTweenAlpha('rosa','rosa',0, 1.5,'linear')
                end

		if value1 == 'exhale' then
	        playSound('Doki-Doki/exhale')

		end
		if value1 == 'yuri' then
		setProperty('BG69.visible', true);
		xx = 430
		yy = 300
	        doTweenColor('BG1', 'BG1', '999999', 8, 'linear');
	        doTweenColor('BG2', 'BG2', '999999', 8, 'linear');
	        doTweenColor('BG4', 'BG4', '999999', 8, 'linear');
   		doTweenColor('bfcolor', 'boyfriend', '999999', 8, 'linear');
	   	doTweenColor('dadcolor', 'dad', '999999', 8, 'linear');
	   	doTweenColor('gfcolor', 'gf', '999999', 8, 'linear');


		end
		if value1 == 'negro' then
        	doTweenAlpha('negro','negro',1, 0.001,'linear')

		end
		if value1 == 'negro-2' then
        	doTweenAlpha('negro','negro',0, 1.5,'linear')
        	doTweenAlpha('b','b',1, 0.001,'linear')
		xx = 550
		yy = 450
	        setProperty('defaultCamZoom',1.4)
	        doTweenColor('BG1', 'BG1', '999999', 0.1, 'linear');
	        doTweenColor('BG2', 'BG2', '999999', 0.1, 'linear');
	        doTweenColor('BG4', 'BG4', '999999', 0.1, 'linear');
   		doTweenColor('bfcolor', 'boyfriend', '999999', 0.1, 'linear');
	   	doTweenColor('dadcolor', 'dad', '999999', 0.1, 'linear');
	   	doTweenColor('gfcolor', 'gf', '999999', 0.1, 'linear');
		setProperty('boyfriend.x', 400)
                end


	end
end
function onTimerCompleted(t,l,ll)
       if t == 'stars' then
		setProperty('stars.x', 0)
		doTweenX('stars','stars', -1280, 80.0,'linear')
		setProperty('stars2.x', 1280)
		doTweenX('stars2','stars2', 0, 80.0,'linear')
                runTimer('stars',80.0)

        end
       if t == 'star' then
		setProperty('star.x', 0)
		doTweenX('star','star', -1280, 150.0,'linear')
		setProperty('star2.x', 1280)
		doTweenX('star2','star2', 0, 150.0,'linear')
                runTimer('star',150.0)

        end

end
