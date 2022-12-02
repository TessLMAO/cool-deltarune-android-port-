--iconChange script originally created by Onionring1403.
--Feel free to add/replace characters listed if need be.

local susIconAppeared = false;
local ralIconAppeared = false;

function onCreate()
	makeLuaSprite('susIcon', 'iconChange/sus', getProperty('iconP1.x'), getProperty('iconP1.y'))
	setObjectCamera('susIcon', 'hud')
	addLuaSprite('susIcon', true)
	setObjectOrder('susIcon', getObjectOrder('iconP1'))
	setProperty('susIcon.flipX', true)
	setProperty('susIcon.visible', false)

	makeLuaSprite('susIconL', 'iconChange/sus-lose', getProperty('iconP1.x'), getProperty('iconP1.y'))
	setObjectCamera('susIconL', 'hud')
	addLuaSprite('susIconL', true)
	setObjectOrder('susIconL', getObjectOrder('iconP1'))
	setProperty('susIconL.flipX', true)
	setProperty('susIconL.visible', false)

	makeLuaSprite('ralIcon', 'iconChange/ral', getProperty('iconP1.x'), getProperty('iconP1.y'))
	setObjectCamera('ralIcon', 'hud')
	addLuaSprite('ralIcon', true)
	setObjectOrder('ralIcon', getObjectOrder('iconP1'))
	setProperty('ralIcon.flipX', true)
	setProperty('ralIcon.visible', false)

	makeLuaSprite('ralIconL', 'iconChange/ral-lose', getProperty('iconP1.x'), getProperty('iconP1.y'))
	setObjectCamera('ralIconL', 'hud')
	addLuaSprite('ralIconL', true)
	setObjectOrder('ralIconL', getObjectOrder('iconP1'))
	setProperty('ralIconL.flipX', true)
	setProperty('ralIconL.visible', false)
end


function onUpdate(elapsed)
	setProperty('susIcon.x', getProperty('iconP1.x'))
	setProperty('susIcon.y', getProperty('iconP1.y'))
	setProperty('susIcon.scale.x', getProperty('iconP1.scale.x'))
	setProperty('susIcon.scale.y', getProperty('iconP1.scale.y'))
	setObjectOrder('susIcon', getObjectOrder('iconP1'))
	setProperty('susIconL.x', getProperty('iconP1.x'))
	setProperty('susIconL.y', getProperty('iconP1.y'))
	setProperty('susIconL.scale.x', getProperty('iconP1.scale.x'))
	setProperty('susIconL.scale.y', getProperty('iconP1.scale.y'))
	setObjectOrder('susIconL', getObjectOrder('iconP1'))

	setProperty('ralIcon.x', getProperty('iconP1.x'))
	setProperty('ralIcon.y', getProperty('iconP1.y'))
	setProperty('ralIcon.scale.x', getProperty('iconP1.scale.x'))
	setProperty('ralIcon.scale.y', getProperty('iconP1.scale.y'))
	setObjectOrder('ralIcon', getObjectOrder('iconP1'))
	setProperty('ralIconL.scale.x', getProperty('iconP1.scale.x'))
	setProperty('ralIconL.scale.y', getProperty('iconP1.scale.y'))
	setProperty('ralIconL.x', getProperty('iconP1.x'))
	setProperty('ralIconL.y', getProperty('iconP1.y'))
	setObjectOrder('ralIconL', getObjectOrder('iconP1'))

	setProperty('susIcon.visible', false)
	setProperty('susIconL.visible', false)
	setProperty('ralIcon.visible', false)
	setProperty('ralIconL.visible', false)
	if susIconAppeared then
		health = getProperty('health')
		if health < 0.4 then
			setProperty('susIcon.visible', false)
			setProperty('susIconL.visible', true)
		else
			setProperty('susIcon.visible',  true)
			setProperty('susIconL.visible', false)
		end
	end
	if ralIconAppeared then
		health = getProperty('health')
		if health < 0.4 then
			setProperty('ralIcon.visible', false)
			setProperty('ralIconL.visible', true)
		else
			setProperty('ralIcon.visible',  true)
			setProperty('ralIconL.visible', false)
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType ~= 'No Animation' then
		setProperty('iconP1.visible', true)
		susIconAppeared = false;
		ralIconAppeared = false;
	end
	if noteType == 'Susie Sing neo' or noteType == 'Susie Sing' then
		susIconAppeared = true;
		setProperty('iconP1.visible', false)
	end
	if noteType == 'GF Sing' then
		if getProperty('gf.curCharacter') == 'ralsei_neo' or getProperty('gf.curCharacter') == 'Ralsei_smile' then
			ralIconAppeared = true;
			setProperty('iconP1.visible', false)
		end
	end
end