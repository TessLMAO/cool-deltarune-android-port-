function onStepHit()
	if curStep == 1 then

	makeLuaText("Text", songName .. " | Psych Engine "..version.."", 0, -2, 545)
    setObjectCamera('Text', 'other');
    setTextSize('Text', 25);
    addLuaText("Text")
    
		makeLuaText('creditos_nigers', "MOD CREADOR POR\nSEEK'S ANIMATIONS AND STUFF\n\nOptimizado por MR FACHA", 0, 750); 
		setTextSize('creditos_nigers', 22);
		setTextColor('creditos_nigers', 'FFE775');
		setObjectCamera('creditos_nigers', 'other');
		addLuaText('creditos_nigers', true);

		doTweenY("creditos_nigers", "creditos_nigers", 382, 2, "linear")	
		doTweenY("Text", "Text", 382, 2, "linear")	
	end
	end

-- by MR RACISMO --
