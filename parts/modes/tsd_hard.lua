local function check_tsd(P)
	local C=P.lastPiece
	if C.row>0 then
		if C.id==5 and C.row==2 and C.spin then
			P.modeData.event=P.modeData.event+1
		else
			P:lose()
		end
	end
end

return{
	color=COLOR.magenta,
	env={
		drop=60,lock=60,
		freshLimit=15,
		dropPiece=check_tsd,
		ospin=false,
		bg="matrix",bgm="push",
	},
	pauseLimit=true,
	load=function()
		PLY.newPlayer(1)
	end,
	mesDisp=function(P)
		setFont(65)
		mStr(P.modeData.event,69,250)
		mText(drawableText.tsd,69,315)
	end,
	score=function(P)return{P.modeData.event,P.stat.frame/60}end,
	scoreDisp=function(D)return D[1].."TSD   "..toTime(D[2])end,
	comp=function(a,b)return a[1]>b[1]or a[1]==b[1]and a[2]<b[2]end,
	getRank=function(P)
		local T=P.modeData.event
		return
		T>=21 and 5 or
		T>=19 and 4 or
		T>=16 and 3 or
		T>=13 and 2 or
		T>=10 and 1 or
		T>=1 and 0
	end,
}