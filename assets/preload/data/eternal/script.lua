function onCreate()
	makeLuaSprite('altFade', nil, -550, -85);
	makeGraphic('altFade', 2560, 1400, 'FFFFFF');
	setScrollFactor('altFade', 0.93, 0.93);
	addLuaSprite('altFade', true);
	setProperty('altFade.alpha', 0.0000001);
end

function onBeatHit()
	if curBeat == 96 or curBeat == 160 or curBeat == 192 or curBeat == 224 or curBeat == 256 or curBeat == 288 then
	cameraFlash(game, 'FFFFFF', 0.36, true)
	end
	--Fade in and out of white
	if curBeat == 156 or curBeat == 220 or curBeat == 284 then 
	doTweenAlpha('fadein', 'altFade', 1, 1.4, 'linear');
	end
	if curBeat == 160 or curBeat == 224 or curBeat == 288 then
	doTweenAlpha('fadeout', 'altFade', 0, 0.02, 'linear');
	end
end