local ch = {}

ch.name = "Challenge1"
ch.version = "1"

-- create a new, empty map:
ch.map = challenges.createEmptyMap(7, 7)

-- fill some of the tiles with Rails and Houses:
ch.map[1][1] = "C"
ch.map[1][2] = "C"
ch.map[1][3] = "C"
ch.map[1][4] = "C"
ch.map[1][5] = "C"
ch.map[4][4] = "C"
ch.map[5][4] = "C"
ch.map[1][2] = "C"

local startTime = 0

function ch.start()
	challenges.setMessage("Starting!")
	startTime = os.time()
end

function ch.update()
	if os.time() - startTime > 5 then
		return "lost"
	end
	challenges.setStatus( "Map by Germanunkol\n" .. 5-(os.time()-startTime) .. " seconds remaining.")
end

function ch.newTrain()

end

return ch