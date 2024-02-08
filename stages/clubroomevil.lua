local xx = 360;
local yy = 850;
local xx2 = 360;
local yy2 = 850;
local ofs = 0;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()

	makeLuaSprite('negro', '', 0, 0);
        makeGraphic('negro',1280,720,'000000')
	addLuaSprite('negro', true);
	setObjectCamera('negro','hud')
        doTweenAlpha('negro','negro',0, 0.1,'linear')


	makeLuaSprite('sky', 'DDLC/bigmonika/sky', -510, 400);
        setProperty("sky.scale.x", 1.002);

	makeLuaSprite('sky2', 'DDLC/bigmonika/sky', 1220, 400);

	makeLuaSprite('mask', 'DDLC/bigmonika/mask', -510, 400);
        setProperty("mask.scale.x", 1.002);

	makeLuaSprite('mask2', 'DDLC/bigmonika/mask', 1220, 400);

	makeLuaSprite('nubes', 'DDLC/bigmonika/Clouds', -510, 400);
        setProperty("nubes.scale.x", 1.002);

	makeLuaSprite('nubes2', 'DDLC/bigmonika/Clouds', 1220, 400);



	makeLuaSprite('BG1', 'DDLC/bigmonika/BG', -510, 400);
	
	makeLuaSprite('BG2', 'DDLC/bigmonika/lights', -510, 400);

	makeLuaSprite('BG3', 'DDLC/bigmonika/WindowLight', -510, 400);

	makeLuaSprite('pati', 'DDLC/bigmonika/pati', -510, 400);

	makeLuaSprite('BG4', 'DDLC/bigmonika/FG', -570, 474);

	makeAnimatedLuaSprite('dead', 'DDLC/bigmonika/bigika_delete', 90, 1000);
	addAnimationByPrefix('dead', 'idle', 'PopUpAnim', 24, false);




        doTweenAlpha('pati','pati',0, 0.1,'linear')
        doTweenAlpha('mask-','mask',0, 0.1,'linear')
        doTweenAlpha('mask2-','mask2',0, 0.1,'linear')
        doTweenAlpha('BG2','BG2',0, 0.1,'linear')
        doTweenAlpha('BG3','BG3',0, 0.1,'linear')
	setProperty('dead.visible', false);

	addLuaSprite('sky', false);
	addLuaSprite('sky2', false);

	addLuaSprite('mask', false);
	addLuaSprite('mask2', false);

	addLuaSprite('nubes', false);
	addLuaSprite('nubes2', false);

	addLuaSprite('BG1', false);
	addLuaSprite('BG2', false);
	addLuaSprite('BG3', false);
	addLuaSprite('pati', false);
	addLuaSprite('BG4', false);
	addLuaSprite('dead', true);




precacheSound('DDLC/Voices')
runTimer('sky',0.3)
runTimer('nubes-mask',0.3)
runTimer('light',3)
end
function onCreatePost()
setProperty('boyfriend.visible', false)
setProperty('gf.visible', false)

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
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    if curBeat == 585 then
        setProperty('defaultCamZoom',0.9)
        doTweenAlpha('pati','pati',1, 1,'linear')
	doTweenX('pati-','pati', -1000, 15.0,'linear')
	doTweenY('pati-2','pati', -90, 15.0,'linear')
    end
    if curBeat == 648 then
        setProperty('defaultCamZoom',0.8)
        doTweenAlpha('pati','pati',0, 1,'linear')
        objectPlayAnimation('dead', 'idle', true);
	setProperty('dead.visible', true);
    end
    if curBeat == 791 then
        doTweenAlpha('negro','negro',1, 1,'linear')
        doTweenAlpha('iconP2','iconP2',0, 1,'linear')
    end
    if curBeat == 795 then
	setProperty('dad.visible', false);
    end
end
function onTimerCompleted(t,l,ll)
       if t == 'sky' then
		setProperty('sky.x', -510)
		doTweenX('sky','sky', -2240, 220.0,'linear')
		setProperty('sky2.x', 1220)
		doTweenX('sky2','sky2', -510, 220.0,'linear')
                runTimer('sky',220.0)

        end
       if t == 'nubes-mask' then
		setProperty('nubes.x', -510)
		doTweenX('nubes','nubes', -2240, 120.0,'linear')
		setProperty('nubes2.x', 1220)
		doTweenX('nubes2','nubes2', -510, 120.0,'linear')
		setProperty('mask.x', -510)
		doTweenX('mask','mask', -2240, 120.0,'linear')
		setProperty('mask2.x', 1220)
		doTweenX('mask2','mask2', -510, 120.0,'linear')
                runTimer('nubes-mask',120.0)

        end
       if t == 'light' then
        doTweenAlpha('mask-','mask',1, 2,'linear')
        doTweenAlpha('mask2-','mask2',1, 2,'linear')
        doTweenAlpha('BG2','BG2',1, 2,'linear')
        doTweenAlpha('BG3','BG3',1, 2,'linear')
                runTimer('no-light',15.0)

        end
       if t == 'no-light' then
        doTweenAlpha('mask-','mask',0, 2,'linear')
        doTweenAlpha('mask2-','mask2',0, 2,'linear')
        doTweenAlpha('BG2','BG2',0, 2,'linear')
        doTweenAlpha('BG3','BG3',0, 2,'linear')
                runTimer('light',15.0)

        end


end
function onEvent(name,value1,value2)
	if name == 'Thepotra' then 
		
		if value1 == 'Lyrics' then
                playSound('DDLC/Voices')


               end
	end
end
