function paginaInicialGraphics ()
	love.graphics.rectangle("line", Ix, Iy, lBotaoIniciar, hBotaoIniciar)
	love.graphics.rectangle("line", Ix2, Iy, lBotaoIniciar, hBotaoIniciar)

	--fundo
	love.graphics.setColor(255,255,255)
 	love.graphics.draw(inicioImg, 1, 1,0,1,1)
 	
 	--jogador 1
 	love.graphics.draw(jogador.frente, Ix, Iy,0,4,4)

 	--jogador2
 	love.graphics.draw(jogador.frente2, Ix2, Iy,0,4,4)

 	--texto
 	love.graphics.setColor(255,255,0)
 	love.graphics.setFont(love.graphics.newFont("fonte/emmasophia.ttf", 35 ))
 	love.graphics.print("BARRACA DE TIRO", 200, 100)
 	love.graphics.print("AO ALVO", 300, 180)

 	love.graphics.setColor(0,0,0)
 	love.graphics.setFont(love.graphics.newFont("fonte/emmasophia.ttf", 20 ))
 	love.graphics.print("Escolha seu personagem", 250, 300)
 	love.graphics.print("Para iniciar o jogo", 300, 350)
end