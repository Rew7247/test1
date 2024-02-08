local xx =  550;
local yy =  470;
local xx2 = 850;
local yy2 = 550;
local ofs = 5;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

	makeLuaSprite('negro', '', 0, 0);
        makeGraphic('negro',1280,720,'000000')
	addLuaSprite('negro', true);
	setObjectCamera('negro','hud')
        doTweenAlpha('negro','negro',0, 0.1,'linear')

	makeLuaSprite('BG1', 'DDLC/Pixel-Week/weebSky', 585, 380);
        setProperty('BG1.antialiasing', false)
	setScrollFactor('BG1', 0.4, 0.4);
        setProperty("BG1.scale.x", 6.0);
        setProperty("BG1.scale.y", 6.0);


	makeLuaSprite('BG2', 'DDLC/Pixel-Week/weebSchool', 625, 389);
        setProperty('BG2.antialiasing', false)
	setScrollFactor('BG2', 0.8, 0.8);
        setProperty("BG2.scale.x", 6.0);
        setProperty("BG2.scale.y", 6.0);


	makeLuaSprite('BG3', 'DDLC/Pixel-Week/weebStreet', 585, 410);
        setProperty('BG3.antialiasing', false)
        setProperty("BG3.scale.x", 6.0);
        setProperty("BG3.scale.y", 6.0);

	makeLuaSprite('BG4', 'DDLC/Pixel-Week/weebTreesBack', 540, 440);
        setProperty('BG4.antialiasing', false)
        setProperty("BG4.scale.x", 5.5);
        setProperty("BG4.scale.y", 6.0);

	makeAnimatedLuaSprite('BG5', 'DDLC/Pixel-Week/rosa', 400, 285)
        addAnimationByPrefix('BG5', 'idle', 'rosa idle', 5, true);
	objectPlayAnimation('BG5', 'idle', true);
        setProperty('BG5.antialiasing', false)
        setProperty("BG5.scale.x", 6.0);
        setProperty("BG5.scale.y", 6.0);

	makeAnimatedLuaSprite('BG6', 'DDLC/Pixel-Week/bgFreaks', 570, 440)
        addAnimationByPrefix('BG6', 'idle', 'BG fangirls dissuaded', 24, false);
        setProperty('BG6.antialiasing', false)
        setProperty("BG6.scale.x", 6.0);
        setProperty("BG6.scale.y", 6.0);
	setProperty('BG6.visible', false);

	makeAnimatedLuaSprite('petalos', 'DDLC/Pixel-Week/petals', 585, 410)
        addAnimationByPrefix('petalos', 'idle', 'PETALS ALL', 24, true);
        addAnimationByPrefix('petalos', 'idle', 'rosa idle', 24, true);
        setProperty('petalos.antialiasing', false)
        setProperty("petalos.scale.x", 6.0);
        setProperty("petalos.scale.y", 6.0);


	makeAnimatedLuaSprite('BG7', 'DDLC/Pixel-Week/animatedEvilSchool', 480, 240);
        addAnimationByPrefix('BG7', 'idle', 'background 2 instance 1', 24, true);
	objectPlayAnimation('BG7', 'idle', true);
        setProperty('BG7.antialiasing', false)
        setProperty("BG7.scale.x", 6.0);
        setProperty("BG7.scale.y", 6.0);


	makeLuaSprite('BG8', 'DDLC/Pixel-Week/FinaleBG_1', -50, 100);
        setProperty('BG8.antialiasing', false)
	setScrollFactor('BG8', 0.4, 0.4);
        setProperty("BG8.scale.x", 1.6);
        setProperty("BG8.scale.y", 1.6);

	makeLuaSprite('BG9', 'DDLC/Pixel-Week/FinaleBG_2', 85, 220);
        setProperty('BG9.antialiasing', false)
	setScrollFactor('BG9', 0.8, 0.8);
        setProperty("BG9.scale.x", 2.2);
        setProperty("BG9.scale.y", 2.2);


	makeLuaSprite('BG10', 'DDLC/Pixel-Week/FinaleFG', 0, 101.7);
        setProperty('BG10.antialiasing', false)
        setProperty("BG10.scale.x", 1.6);
        setProperty("BG10.scale.y", 1.6);


	setProperty('BG6.visible', false);
	setProperty('BG7.visible', false);
	setProperty('BG8.visible', false);
	setProperty('BG9.visible', false);
	setProperty('BG10.visible', false);

	makeAnimatedLuaSprite('BG69', 'DDLC/Pixel-Week/HomeStatic', 0, 0);
        addAnimationByPrefix('BG69', 'idle', 'HomeStatic', 24, true);
	objectPlayAnimation('BG69', 'idle', true);
	setObjectCamera('BG69','hud')
        doTweenAlpha('BG69','BG69',0, 0.1,'linear')


	addLuaSprite('BG1', false);
	addLuaSprite('BG2', false);
	addLuaSprite('BG3', false);
	addLuaSprite('BG4', false);
	addLuaSprite('BG5', false);
	addLuaSprite('BG6', false);
	addLuaSprite('petalos', true);
	addLuaSprite('BG7', false);
	addLuaSprite('BG8', false);
	addLuaSprite('BG9', false);
	addLuaSprite('BG10', false);
	addLuaSprite('BG69', true);

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

        objectPlayAnimation('BG6', 'idle', true);
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
		
		if value1 == 'jm-1' then
	        setProperty('defaultCamZoom',0.9)
		setProperty('BG7.visible', true);
		setProperty('dad.visible', false)
		setProperty('gf.visible', true)
		setProperty('BG8.visible', true);
		setProperty('BG9.visible', true);
		setProperty('BG10.visible', true);
                doTweenAlpha('BG69','BG69',1, 0.001,'linear')
                doTweenAlpha('BG69-NO','BG69',0, 1.0,'linear')
		xx = 500
		xx2 = 700
		yy = 470
		yy2 = 530

                end

		if value1 == 'jm-2' then
	        setProperty('defaultCamZoom',0.9)
		setProperty('dad.visible', true)
		setProperty('gf.visible', false)
		setProperty('BG8.visible', false);
		setProperty('BG9.visible', false);
		setProperty('BG10.visible', false);
                doTweenAlpha('BG69','BG69',1, 0.001,'linear')
                doTweenAlpha('BG69-NO','BG69',0, 1.0,'linear')
		xx = 550
		xx2 = 850
		yy = 470
		yy2 = 550

                end

		if value1 == 'negro' then
       		doTweenAlpha('negro','negro',1, 0.001,'linear')

                end

		if value1 == 'no-negro' then
       		doTweenAlpha('negro','negro',0, 0.001,'linear')



                end

		if value1 == 'negro-fin' then
       		doTweenAlpha('negro','negro',1, 1,'linear')

                end
		if value1 == 'morado' then
		setProperty('BG7.visible', true);
		setProperty('petalos.visible', false);
                doTweenAlpha('BG69','BG69',1, 0.001,'linear')
                doTweenAlpha('BG69-NO','BG69',0, 1.0,'linear')

                end

		if value1 == 'morado-no' then
		setProperty('BG7.visible', false);
		setProperty('petalos.visible', true);
                doTweenAlpha('BG69','BG69',1, 0.001,'linear')
                doTweenAlpha('BG69-NO','BG69',0, 1.0,'linear')



                end

		if value1 == 'senpai' then
		xx2 = 850
		yy2 = 470


                end


	end
end

