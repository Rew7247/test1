function onCreatePost()
  for i = 0, getProperty('playerStrums.length')-1 do
  setPropertyFromGroup('playerStrums', i, 'texture', 'notas/pixel');

  end

  for i = 0, getProperty('opponentStrums.length')-1 do
  setPropertyFromGroup('opponentStrums', i, 'texture', 'notas/pixel');

  
end
end