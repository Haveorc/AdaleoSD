function opponentNoteHit()
	health = getProperty('health')
	if getProperty('dad.curCharacter') == "twinbf" then
    if getProperty('health') > 0.1 and difficulty == 2 then
        setProperty('health', health - 0.015);
		else if getProperty('health') > 0.1 and difficulty == 1 then
		setProperty('health', health - 0.0075);
		end
		end
	end
end