

function comandosJogador(dt)
	if flag2 then	                        
		if love.keyboard.isDown("left") then
			jogador.x = jogador.x - (400*dt)
			cx = cx - (400*dt)

		end
		if love.keyboard.isDown("right") then
			jogador.x = jogador.x + (400*dt)
			cx = cx + (400*dt)
		end
	end
end

function comandosBola(dt)                        
	if love.keyboard.isDown("space") and flag then
		flag2=false 
		velocidade = velocidade+10 * dt
		if velocidade>25 then
			velocidade=0
		end
		parada = true
	
	elseif parada then
		if tempo>=0 then
			tempo = tempo - 10 * dt
			cy = cy - velocidade
		else
			flag3=true 
		end
		flag=false	
	end	
end

function colisaoBolaAlvo(dt)
	if colidir==true and flag3==true then
	 	time=time-10*dt
		if time<=0 then
 			ax=love.math.random(116,1250)        -- largura= de 116 a 1250
			ay=love.math.random(450,50)          -- altura= de 450 a 50
			cx=jogador.x+50 
			cy=jogador.y+50
			flag3=false
			flag2=true
			flag=true
			parada = false
			tempo = 4
			velocidade = 0
			score = score + 1
			time=2
		end
	elseif flag3==true and colidir==false then
		time=time-10*dt
		if time<=0 then
			pontuação=score
			status="gameOver"
		end
	end
end



function love.mousepressed(mousex, mousey, button, istouch)
	if status=="gameOver" then
		if button==1 then
			if  mousey>=iy and mousey<=(iy+hBotaoReiniciar) then
				if mousex>=ix and mousex<=(ix+lBotaoReiniciar) then
					botaoPressionado=true
				end
			end
		end
	end
	if status=="paginaInicial" then
		if button==1 then
			if  mousey>=Iy and mousey<=(Iy+hBotaoIniciar) then
				if mousex>=Ix and mousex<=(Ix+lBotaoIniciar) then
					personagem=1
					botaoPressionado=true
					
				end
			end
			if  mousey>=Iy and mousey<=(Iy+hBotaoIniciar) then
				if mousex>=Ix2 and mousex<=(Ix2+lBotaoIniciar) then
					personagem=2
					botaoPressionado=true
					
				end
			end
		end
	end
	if (status=="gameOver" and botaoPressionado==true) or (status=="paginaInicial" and botaoPressionado==true) then
 		status="jogo"
 		ax=love.math.random(116,1250)        -- largura= de 116 a 1250
		ay=love.math.random(450,50)          -- altura= de 450 a 50
		cx=jogador.x+50 
		cy=jogador.y+50
		flag3=false
		flag2=true
		flag=true
		parada = false
		tempo = 4
		velocidade = 0
		score = 0
		time=2
		botaoPressionado=false
 	end	
end 
	

function pilhaBolas()
	if piramide==0 then
		bolay = bolay + 10
		if bolay>=650 then
			piramide=1	
		end
	end
	if piramide==1 then
		bolay1=bolay1+10
		if bolay1>=650 then
			piramide=2
		end
	end
	if piramide==2 then
		bolay2=bolay2+10
		if bolay2>=650 then
			piramide=3
		end
	end
	if piramide==3 then
		bolay3=bolay3+10
		if bolay3>=580 then
			piramide=4
		end
	end
	if piramide==4 then
		bolay4=bolay4+10
		if bolay4>=580 then
			piramide=5
		end
	end
	if piramide==5 then
		bolay5=bolay5+10
		if bolay5>=520 then
			piramide=6
		end
	end
end