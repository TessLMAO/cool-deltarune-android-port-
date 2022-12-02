function onEndSong()
	if ratingName == 'Perfect!!' then
		loadSong('tutorial', 'hard')
		return Function_Stop
	end
	return Function_Continue
end