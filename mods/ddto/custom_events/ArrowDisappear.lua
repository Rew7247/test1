function onEvent(name, value1, value2)
	-- bf notesFade
	if name == 'ArrowDisappear' then
	noteTweenAlpha('AF',8 , value2 , value1 + 0.01, 'linear');
	noteTweenAlpha('BF',9 , value2 , value1 + 0.01, 'linear');
	noteTweenAlpha('CF',10 , value2 , value1 + 0.01, 'linear');
	noteTweenAlpha('DF',11 , value2 , value1 + 0.01, 'linear');
	
	-- oppt notefade
	noteTweenAlpha('EF',6  , value2 , value1 + 0.01, 'linear');
	noteTweenAlpha('FF',6 , value2 , value1 + 0.01, 'linear');
	noteTweenAlpha('GF',6 , value2 , value1 + 0.01, 'linear');
	noteTweenAlpha('HF',7 , value2 , value1 + 0.01, 'linear');
	
	
end
end
