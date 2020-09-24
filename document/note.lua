debug.sethook(function(mode)
	if mode=="call"then
	elseif mode=="return"then
	end
	--local T=debug.getinfo(1)
end,"cr")

--[[
	_os							String
	_deprecation				Userdata

	_modules					Table
	_openConsole				Func
	_requestRecordingPermission	Func
	_setAudioMixWithSystem		Func
	_setGammaCorrect			Func

	threaderror					Func
	errhand						Func

	arg							Table
	path						Table
	boot						Func
	createhandlers				Func
	hasDeprecationOutput		Func
	setDeprecationOutput		Func
	isVersionCompatible			Func
]]