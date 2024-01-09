function placeCob(where)
	turtle.select(1)
	local status = true
	
	
	while true do
		if not status then
			break
		end
		local selected = turtle.getSelectedSlot()
		print(selected)
		turtle.select(selected + 1)
		local data = turtle.getItemDetail()
		
		if data == nil then
			if selected + 1 > 15 then
				print("no cobblestone")
				status = false
				break
			end
		elseif not status then
			break
		elseif data.name == "minecraft:cobblestone" then
			break
		elseif selected + 1 > 15 then
			print("no cobblestone")
			status = false
			break
		end
		sleep(0.1)
	end
	if status then
		if where == nil then
			turtle.place()
		elseif where == "down" then
			turtle.placeDown()
		elseif where == "up" then
			turtle.placeUp()
		end
	end
end

function placeSlab(where)
	turtle.select(1)
	local status = true
	
	
	while true do
		if not status then
			break
		end
		local selected = turtle.getSelectedSlot()
		print(selected)
		turtle.select(selected + 1)
		local data = turtle.getItemDetail()
		
		if data == nil then
			if selected + 1 > 15 then
				print("no slabs")
				status = false
				break
			end
		elseif not status then
			break
		elseif data.name == "minecraft:deepslate_tile_slab" then
			break
		elseif selected + 1 > 15 then
			print("no slabs")
			status = false
			break
		end
		sleep(0.1)
	end
	if status then
		if where == nil then
			turtle.place()
		elseif where == "down" then
			turtle.placeDown()
		elseif where == "up" then
			turtle.placeUp()
		end
	end
end

function placeWhite(where)
	turtle.select(1)
	local status = true
	
	
	while true do
		if not status then
			break
		end
		local selected = turtle.getSelectedSlot()
		print(selected)
		turtle.select(selected + 1)
		local data = turtle.getItemDetail()
		
		if data == nil then
			if selected + 1 > 15 then
				print("no diorite")
				status = false
				break
			end
		elseif not status then
			break
		elseif data.name == "create:cut_diorite_bricks" then
			break
		elseif selected + 1 > 15 then
			print("no diorite")
			status = false
			break
		end
		sleep(0.1)
	end
	if status then
		if where == nil then
			turtle.place()
		elseif where == "down" then
			turtle.placeDown()
		elseif where == "up" then
			turtle.placeUp()
		end
	end
end

function placeBricks(where)
	turtle.select(1)
	local status = true
	
	
	while true do
		if not status then
			break
		end
		local selected = turtle.getSelectedSlot()
		print(selected)
		turtle.select(selected + 1)
		local data = turtle.getItemDetail()
		
		if data == nil then
			if selected + 1 > 15 then
				print("no bricks")
				status = false
				break
			end
		elseif not status then
			break
		elseif data.name == "minecraft:stone_bricks" then
			break
		elseif selected + 1 > 15 then
			print("no bricks")
			status = false
			break
		end
		sleep(0.1)
	end
	if status then
		if where == nil then
			turtle.place()
		elseif where == "down" then
			turtle.placeDown()
		elseif where == "up" then
			turtle.placeUp()
		end
	end
end

function placeStairs(where)
	turtle.select(1)
	local status = true
	
	
	while true do
		if not status then
			break
		end
		local selected = turtle.getSelectedSlot()
		print(selected)
		turtle.select(selected + 1)
		local data = turtle.getItemDetail()
		
		if data == nil then
			if selected + 1 > 15 then
				print("no stairs")
				status = false
				break
			end
		elseif not status then
			break
		elseif data.name == "minecraft:polished_deepslate_stairs" then
			break
		elseif selected + 1 > 15 then
			print("no stairs")
			status = false
			break
		end
		sleep(0.1)
	end
	if status then
		if where == nil then
			turtle.place()
		elseif where == "down" then
			turtle.placeDown()
		elseif where == "up" then
			turtle.placeUp()
		end
	end
end

function placeGravel(where)
	turtle.select(1)
	local status = true
	
	
	while true do
		if not status then
			break
		end
		local selected = turtle.getSelectedSlot()
		print(selected)
		turtle.select(selected + 1)
		local data = turtle.getItemDetail()
		
		if data == nil then
			if selected + 1 > 15 then
				print("no gravel")
				status = false
				break
			end
		elseif not status then
			break
		elseif data.name == "minecraft:gravel" then
			break
		elseif selected + 1 > 15 then
			print("no gravel")
			status = false
			break
		end
		sleep(0.1)
	end
	if status then
		if where == nil then
			turtle.place()
		elseif where == "down" then
			turtle.placeDown()
		elseif where == "up" then
			turtle.placeUp()
		end
	end
end

function turnR()
turtle.turnRight()
end

function turnL()
turtle.turnLeft()
end

function go()
turtle.forward()
end

function down()
turtle.down()
end

function up()
turtle.up()
end

function back()
turtle.back()
end

function dig(where)
	placeCob(where)
	while true do
	
	if where == nil then
	if not turtle.inspect() then
		break
	end
		turtle.dig()
	elseif where == "down" then
	if not turtle.inspectDown() then
		break
	end
		turtle.digDown()
	elseif where == "up" then
	if not turtle.inspectUp() then
		break
	end
		turtle.digUp()
	end
	end
end

print("length")
r = read()
length = tonumber(r)
count = 0

while length > count -1 do
    dig("down")
    down()
    dig("down")
    down()
    turnL()
    dig()
    placeCob()
    turnR()
    turnR()
    dig()
    placeCob()
	turnL()
	up()
	placeCob("down")
	turnL()
	dig()
	placeGravel()
	turnR()
	turnR()
	dig()
	placeGravel()
	up()
	placeGravel("down")
	
	dig()
	go()
	dig()
	go()
	placeCob()
	back()
	placeStairs()
	back()
	turnL()
	turnL()
	dig()
	go()
	dig()
	go()
	dig("down")
	dig()
	go()
	turnL()
	turnL()
	placeStairs()
	
	dig("up")
	up()
	placeCob("down")
	dig("up")
	up()
	placeBricks("down")
	dig("up")
	up()
	placeWhite("down")
	dig("up")
	up()
	placeWhite("down")
	dig("up")
	up()
	placeBricks("down")
	dig()
	go()
	placeCob("up")
	turnL()
	turnL()
	placeCob()
	dig("down")
	down()
	placeStairs("up")
	turnL()
	turnL()
	dig()
	go()
	dig("up")
	up()
	dig("up")
	up()
	dig("up")
	down()
	placeSlab("up")
	dig()
	go()
	dig("up")
	up()
	dig("up")
	down()
	placeSlab("up")
	dig()
	go()
	dig("up")
	up()
	dig("up")
	down()
	placeSlab("up")
	dig()
	go()
	placeCob()
	placeCob("up")
	dig("down")
	down()
	placeStairs("up")
	
	dig("down")
	down()
	dig("down")
	down()
	dig("down")
	down()
	turnL()
	turnL()
	dig()
	go()
	dig()
	go()
	dig()
	go()
	dig()
	go()
	dig("up")
	up()
	dig("up")
	up()
	dig("up")
	up()
	turnL()
	turnL()
	dig()
	go()
	dig()
	go()
	dig()
	go()
	dig("down")
	down()
	dig("down")
	down()
	turnL()
	turnL()
	dig()
	go()
	dig("up")
	dig()
	go()
	dig("up")
	back()
	turnR()
	down()
	down()
	dig()
	go()
	
    count = count + 1
    sleep(0.1)
end
