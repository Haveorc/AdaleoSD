function onCreate()
	makeLuaSprite('fade', nil, -550, -85);
	makeGraphic('fade', 2560, 1400, '000000');
	setLuaSpriteScrollFactor('fade', 0.93, 0.93);
	addLuaSprite('fade', true)
	setProperty('camHUD.visible', false);
end

function onSongStart()
	doTweenAlpha('fadeout', 'fade', 0, 10, 'linear');
end

function onStepHit()
	if curStep == 128 then
	setProperty('camHUD.visible', true);
	end
	--if curStep == 1583 and isStoryMode then					Juat wait for a future update...
	--doTweenAlpha('fadein', 'fade', 1, 1.42, 'linear');
	--end
end