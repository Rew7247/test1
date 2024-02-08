local xx =  430;
local yy =  400;
local xx2 = 900;
local yy2 = 450;
local ofs = 5;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
	addCharacterToList('monika-pixelnew', 'dad');
	addCharacterToList('pixelbf-new', 'boyfriend');
	addCharacterToList('gf-pixel-new', 'gf');
	addCharacterToList('monika', 'dad');
	addCharacterToList('bf-doki', 'boyfriend');
	addCharacterToList('gf-real-doki', 'gf');



	makeLuaSprite('BG1', 'DDLC/festival/Farback', -187, -245);
	setScrollFactor('BG1', 0.9, 0.9);
        setProperty("BG1.scale.x", 1.6);
        setProperty("BG1.scale.y", 1.6);


	makeLuaSprite('BG2', 'DDLC/festival/Mainbg', -187, -245);
        setProperty("BG2.scale.x", 1.6);
        setProperty("BG2.scale.y", 1.6);

	makeAnimatedLuaSprite('BG3', 'DDLC/festival/lights_back', 390, 150);
        addAnimationByPrefix('BG3', 'idle', 'lights back', 24, true);
	objectPlayAnimation('BG3', 'idle', true);
        setProperty("BG3.scale.x", 1.6);
        setProperty("BG3.scale.y", 1.6);

--Stage - Yuri


	makeAnimatedLuaSprite('monika-1', 'DDLC/bgdoki/monika', 1150, 28)
        addAnimationByPrefix('monika-1', 'idle', 'Moni BG', 24, false);
        setProperty("monika-1.scale.x", 0.7);
        setProperty("monika-1.scale.y", 0.7);

	makeAnimatedLuaSprite('protag-1', 'DDLC/bgdoki/protag', 325, -0)
        addAnimationByPrefix('protag-1', 'idle', 'Protag-kun BG', 24, false);
        setProperty("protag-1.scale.x", 0.7);
        setProperty("protag-1.scale.y", 0.7);


	makeAnimatedLuaSprite('natsuki-1', 'DDLC/bgdoki/natsuki', 1025, 170)
        addAnimationByPrefix('natsuki-1', 'idle', 'Natsu BG', 24, false);
        setProperty("natsuki-1.scale.x", 0.7);
        setProperty("natsuki-1.scale.y", 0.7);

	makeAnimatedLuaSprite('sayori-1', 'DDLC/bgdoki/sayori', -100, 135)
        addAnimationByPrefix('sayori-1', 'idle', 'Sayori BG', 24, false);
        setProperty("sayori-1.scale.x", 0.7);
        setProperty("sayori-1.scale.y", 0.7);


	setProperty('monika-1.visible', false);
	setProperty('protag-1.visible', false);
	setProperty('natsuki-1.visible', false);
	setProperty('sayori-1.visible', false);

        doTweenColor('monika-1', 'monika-1', '828282', 0.1, 'linear');
        doTweenColor('protag-1', 'protag-1', '828282', 0.1, 'linear');
        doTweenColor('sayori-1', 'sayori-1', '828282', 0.1, 'linear');
        doTweenColor('natsuki-1', 'natsuki-1', '828282', 0.1, 'linear');



--Stage - Natsuki

	makeAnimatedLuaSprite('monika-2', 'DDLC/bgdoki/monika', 1120, 28)
        addAnimationByPrefix('monika-2', 'idle', 'Moni BG', 24, false);
        setProperty("monika-2.scale.x", 0.7);
        setProperty("monika-2.scale.y", 0.7);

	makeAnimatedLuaSprite('protag-2', 'DDLC/bgdoki/protag', 325, -0)
        addAnimationByPrefix('protag-2', 'idle', 'Protag-kun BG', 24, false);
        setProperty("protag-2.scale.x", 0.7);
        setProperty("protag-2.scale.y", 0.7);


	makeAnimatedLuaSprite('yuri-2', 'DDLC/bgdoki/yuri', 1000, 45)
        addAnimationByPrefix('yuri-2', 'idle', 'Yuri BG', 24, false);
        setProperty("yuri-2.scale.x", 0.7);
        setProperty("yuri-2.scale.y", 0.7);

	makeAnimatedLuaSprite('sayori-2', 'DDLC/bgdoki/sayori', -100, 135)
        addAnimationByPrefix('sayori-2', 'idle', 'Sayori BG', 24, false);
        setProperty("sayori-2.scale.x", 0.7);
        setProperty("sayori-2.scale.y", 0.7);


	setProperty('monika-2.visible', false);
	setProperty('protag-2.visible', false);
	setProperty('yuri-2.visible', false);
	setProperty('sayori-2.visible', false);

        doTweenColor('monika-2', 'monika-2', '828282', 0.1, 'linear');
        doTweenColor('protag-2', 'protag-2', '828282', 0.1, 'linear');
        doTweenColor('sayori-2', 'sayori-2', '828282', 0.1, 'linear');
        doTweenColor('yuri-2', 'yuri-2', '828282', 0.1, 'linear');

--Stage - Sayori

	makeAnimatedLuaSprite('monika-3', 'DDLC/bgdoki/monika', 1120, 28)
        addAnimationByPrefix('monika-3', 'idle', 'Moni BG', 24, false);
        setProperty("monika-3.scale.x", 0.7);
        setProperty("monika-3.scale.y", 0.7);

	makeAnimatedLuaSprite('protag-3', 'DDLC/bgdoki/protag', 325, -0)
        addAnimationByPrefix('protag-3', 'idle', 'Protag-kun BG', 24, false);
        setProperty("protag-3.scale.x", 0.7);
        setProperty("protag-3.scale.y", 0.7);


	makeAnimatedLuaSprite('natsuki-3', 'DDLC/bgdoki/natsuki', 1000, 170)
        addAnimationByPrefix('natsuki-3', 'idle', 'Natsu BG', 24, false);
        setProperty("natsuki-3.scale.x", 0.7);
        setProperty("natsuki-3.scale.y", 0.7);

	makeAnimatedLuaSprite('yuri-3', 'DDLC/bgdoki/yuri', -130, 45)
        addAnimationByPrefix('yuri-3', 'idle', 'Yuri BG', 24, false);
        setProperty("yuri-3.scale.x", 0.7);
        setProperty("yuri-3.scale.y", 0.7);

	setProperty('monika-3.visible', false);
	setProperty('protag-3.visible', false);
	setProperty('yuri-3.visible', false);
	setProperty('natsuki-3.visible', false);

        doTweenColor('monika-3', 'monika-3', '828282', 0.1, 'linear');
        doTweenColor('protag-3', 'protag-3', '828282', 0.1, 'linear');
        doTweenColor('natsuki-3', 'natsuki-3', '828282', 0.1, 'linear');
        doTweenColor('yuri-3', 'yuri-3', '828282', 0.1, 'linear');

---Stage - Monika

	makeAnimatedLuaSprite('sayori-4', 'DDLC/bgdoki/sayori', -100, 135)
        addAnimationByPrefix('sayori-4', 'idle', 'Sayori BG', 24, false);
        setProperty("sayori-4.scale.x", 0.7);
        setProperty("sayori-4.scale.y", 0.7);

	makeAnimatedLuaSprite('protag-4', 'DDLC/bgdoki/protag', 80, 10)
        addAnimationByPrefix('protag-4', 'idle', 'Protag-kun BG', 24, false);
        setProperty("protag-4.scale.x", 0.7);
        setProperty("protag-4.scale.y", 0.7);


	makeAnimatedLuaSprite('natsuki-4', 'DDLC/bgdoki/natsuki', 1200, 180)
        addAnimationByPrefix('natsuki-4', 'idle', 'Natsu BG', 24, false);
        setProperty("natsuki-4.scale.x", 0.7);
        setProperty("natsuki-4.scale.y", 0.7);

	makeAnimatedLuaSprite('yuri-4', 'DDLC/bgdoki/yuri', 1000, 35)
        addAnimationByPrefix('yuri-4', 'idle', 'Yuri BG', 24, false);
        setProperty("yuri-4.scale.x", 0.7);
        setProperty("yuri-4.scale.y", 0.7);

	setProperty('sayori-4.visible', false);
	setProperty('protag-4.visible', false);
	setProperty('yuri-4.visible', false);
	setProperty('natsuki-4.visible', false);

        doTweenColor('sayori-4', 'sayori-4', '828282', 0.1, 'linear');
        doTweenColor('protag-4', 'protag-4', '828282', 0.1, 'linear');
        doTweenColor('natsuki-4', 'natsuki-4', '828282', 0.1, 'linear');
        doTweenColor('yuri-4', 'yuri-4', '828282', 0.1, 'linear');

--

	makeLuaSprite('BG4', 'DDLC/festival/festivalbanner', -187, -245);
        setProperty("BG4.scale.x", 1.6);
        setProperty("BG4.scale.y", 1.6);

	makeLuaSprite('BG5', 'DDLC/festival/DesksFestival', -185, -235);
	setScrollFactor('BG5', 1.3, 1.3);
        setProperty("BG5.scale.x", 1.6);
        setProperty("BG5.scale.y", 1.6);

	makeAnimatedLuaSprite('BG6', 'DDLC/festival/Lights_front', -550, 700);
        addAnimationByPrefix('BG6', 'idle', 'Lights front', 24, true);
	objectPlayAnimation('BG6', 'idle', true);
	setScrollFactor('BG6', 1.3, 1.3);
        setProperty("BG6.scale.x", 1.6);
        setProperty("BG6.scale.y", 1.6);

	makeLuaSprite('XBG1', 'DDLC/Pixel-Week/weebSky', 585, 380);
        setProperty('XBG1.antialiasing', false)
	setScrollFactor('XBG1', 0.4, 0.4);
        setProperty("XBG1.scale.x", 6.0);
        setProperty("XBG1.scale.y", 6.0);


	makeLuaSprite('XBG2', 'DDLC/Pixel-Week/weebSchool', 625, 389);
        setProperty('XBG2.antialiasing', false)
	setScrollFactor('XBG2', 0.8, 0.8);
        setProperty("XBG2.scale.x", 6.0);
        setProperty("XBG2.scale.y", 6.0);


	makeLuaSprite('XBG3', 'DDLC/Pixel-Week/weebStreet', 585, 410);
        setProperty('XBG3.antialiasing', false)
        setProperty("XBG3.scale.x", 6.0);
        setProperty("XBG3.scale.y", 6.0);

	makeLuaSprite('XBG4', 'DDLC/Pixel-Week/weebTreesBack', 540, 440);
        setProperty('XBG4.antialiasing', false)
        setProperty("XBG4.scale.x", 5.5);
        setProperty("XBG4.scale.y", 6.0);

	makeAnimatedLuaSprite('XBG5', 'DDLC/Pixel-Week/rosa', 400, 285)
        addAnimationByPrefix('XBG5', 'idle', 'rosa idle', 5, true);
	objectPlayAnimation('XBG5', 'idle', true);
        setProperty('XBG5.antialiasing', false)
        setProperty("XBG5.scale.x", 6.0);
        setProperty("XBG5.scale.y", 6.0);

	setProperty('XBG1.visible', false);
	setProperty('XBG2.visible', false);
	setProperty('XBG3.visible', false);
	setProperty('XBG4.visible', false);
	setProperty('XBG5.visible', false);











	addLuaSprite('BG1', false);
	addLuaSprite('BG2', false);
	addLuaSprite('BG3', false);

--
	addLuaSprite('monika-1', false);
	addLuaSprite('protag-1', false);
	addLuaSprite('natsuki-1', false);
	addLuaSprite('sayori-1', false);
--
	addLuaSprite('monika-2', false);
	addLuaSprite('protag-2', false);
	addLuaSprite('yuri-2', false);
	addLuaSprite('sayori-2', false);
--
	addLuaSprite('monika-3', false);
	addLuaSprite('protag-3', false);
	addLuaSprite('yuri-3', false);
	addLuaSprite('natsuki-3', false);
--
	addLuaSprite('sayori-4', false);
	addLuaSprite('protag-4', false);
	addLuaSprite('yuri-4', false);
	addLuaSprite('natsuki-4', false);


	addLuaSprite('BG4', false);
	addLuaSprite('BG5', true);
	addLuaSprite('BG6', true);

	addLuaSprite('XBG1', false);
	addLuaSprite('XBG2', false);
	addLuaSprite('XBG3', false);
	addLuaSprite('XBG4', false);
	addLuaSprite('XBG5', false);



end
function onCreatePost()
doTweenColor('bfcolor', 'boyfriend', '828282', 0.1, 'linear');
doTweenColor('dadcolor', 'dad', '828282', 0.1, 'linear');
doTweenColor('gfcolor', 'gf', '828282', 0.1, 'linear');


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
        objectPlayAnimation('sayori-1', 'idle', true);
        objectPlayAnimation('monika-1', 'idle', true);
        objectPlayAnimation('protag-1', 'idle', true);
--
        objectPlayAnimation('yuri-2', 'idle', true);
        objectPlayAnimation('sayori-2', 'idle', true);
        objectPlayAnimation('monika-2', 'idle', true);
        objectPlayAnimation('protag-2', 'idle', true);
--
        objectPlayAnimation('yuri-3', 'idle', true);
        objectPlayAnimation('natsuki-3', 'idle', true);
        objectPlayAnimation('monika-3', 'idle', true);
        objectPlayAnimation('protag-3', 'idle', true);
--
        objectPlayAnimation('yuri-4', 'idle', true);
        objectPlayAnimation('natsuki-4', 'idle', true);
        objectPlayAnimation('sayori-4', 'idle', true);
        objectPlayAnimation('protag-4', 'idle', true);

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
		
		if value1 == 'pixel' then
		triggerEvent('Change Character', 0, 'pixelbf-new');
		triggerEvent('Change Character', 1, 'monika-pixelnew');
		triggerEvent('Change Character', 2, 'gf-pixel-new');
	        setProperty('defaultCamZoom',1.0)
		setProperty('XBG1.visible', true);
		setProperty('XBG2.visible', true);
		setProperty('XBG3.visible', true);
		setProperty('XBG4.visible', true);
		setProperty('XBG5.visible', true);
		setProperty('BG2.visible', false);
		setProperty('BG4.visible', false);
		setProperty('BG5.visible', false);
		setProperty('BG6.visible', false);
		doTweenColor('bfcolor', 'boyfriend', 'ffffff', 0.001, 'linear');
		doTweenColor('dadcolor', 'dad', 'ffffff', 0.001, 'linear');
		doTweenColor('gfcolor', 'gf', 'ffffff', 0.001, 'linear');
		xx = 550
		xx2 = 850
		yy = 470
		yy2 = 550

                end

		if value1 == 'pixel-2' then
		triggerEvent('Change Character', 0, 'bf-doki');
		triggerEvent('Change Character', 1, 'monika');
		triggerEvent('Change Character', 2, 'gf-realdoki');
	        setProperty('defaultCamZoom',0.75)
		setProperty('XBG1.visible', false);
		setProperty('XBG2.visible', false);
		setProperty('XBG3.visible', false);
		setProperty('XBG4.visible', false);
		setProperty('XBG5.visible', false);
		setProperty('BG2.visible', true);
		setProperty('BG4.visible', true);
		setProperty('BG5.visible', true);
		setProperty('BG6.visible', true);
		doTweenColor('bfcolor', 'boyfriend', '828282', 0.001, 'linear');
		doTweenColor('dadcolor', 'dad', '828282', 0.001, 'linear');
		doTweenColor('gfcolor', 'gf', '828282', 0.001, 'linear');
		xx = 430
		xx2 = 900
		yy = 400
		yy2 = 450


                end
end
end
