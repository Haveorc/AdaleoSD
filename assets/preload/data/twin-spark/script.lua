function onCreate()
	makeLuaSprite('IntTSpark', 'IntTSpark', -550, -85);
	setLuaSpriteScrollFactor('IntTSpark', 0.93, 0.93);
	addLuaSprite('IntTSpark', true)
	setProperty('camHUD.visible', false);
end

function onSongStart()
	doTweenAlpha('IntTSpark', 'IntTSpark', 0, 10, 'linear');
end

function onStepHit()
	if curStep == 128 then
	removeLuaSprite('IntTSpark', true);
	setProperty('camHUD.visible', true);
	end
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.1 and difficulty == 2 then
        setProperty('health', health - 0.015);
		else if getProperty('health') > 0.05 and difficulty == 1 then
		setProperty('health', health - 0.0075);
		end
    end
end