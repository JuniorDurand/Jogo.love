

function ranking()
   -- gameOver = "jogo"
    pontuação = 0
    record1 = nil
    record2 = nil
    record3 = nil
    if love.filesystem.getInfo( "record1.txt" ) then
        record1 = (love.filesystem.read ( "record1.txt" ))
    end
    if love.filesystem.getInfo( "record2.txt" ) then
        record2 = (love.filesystem.read ( "record2.txt" ))
    end
    if love.filesystem.getInfo( "record3.txt" ) then
        record3 = (love.filesystem.read ( "record3.txt" ))
    end
end

function gravarRecords(dt)
    if record1 then love.filesystem.write(record1,"record1.txt") end
    if record2 then love.filesystem.write(record2,"record2.txt") end
    if record3 then love.filesystem.write(record3,"record3.txt") end
end

function fazendoRanking(dt)
	--if gameOver == false then
        
        if record1 and pontuação > record1 then -- NESSE CASO NÃO EXISTE UM PRIMEIRO RECORD
            record1, record2, record3 = pontuação, record1, record2
            pontuação = 0
            gravarRecords(dt)
        elseif not record1 then -- NESSE CASO NÃO EXISTE UM PRIMEIRO RECORD
            record1 = pontuação
            pontuação = 0
            gravarRecords(dt)
        elseif record2 and pontuação > record2 then -- NESSE CASO EXISTE SEGUNDO RECORD
            record1, record2, record3 = record1, pontuação, record2
            pontuação = 0
            gravarRecords(dt)
        elseif not record2 then -- NESSE CASO NÃO EXISTE UM SEGUNDO RECORD
            record2 = pontuação
        elseif record3 and pontuação > record3 then -- NESSE CASO EXISTE UM TERCEIRO RECORD
            record1, record2, record3 = record1, record2, pontuação
            pontuação = 0
            gravarRecords(dt)
        elseif not record3 then -- NESSE CASO NÃO EXISTE UM TERCEIRO RECORD
            record3 = pontuação
        end
    --end
end

function rankingGraphics ()
	 	love.graphics.setFont(love.graphics.newFont("fonte/emmasophia.ttf", 20 ))
        if record1 then love.graphics.print( "#1___".. record1 , 900, 400) end
        if record2 then love.graphics.print( "#2___".. record2 , 900, 450) end
        if record3 then love.graphics.print( "#3___".. record3 , 900, 500) end
        
end