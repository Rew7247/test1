function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Note-Eyes-Pixel' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notas/Eyes-Pixel'); --Change texture
			        setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true); -- make it so original character doesn't sing these notes
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
		end
	end
end
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Note-Eyes-Pixel' then
		setProperty('health', -0.1);
	end
end
