function gameOverGraphics()
	love.graphics.rectangle("line", ix, iy-25, lBotaoReiniciar, hBotaoReiniciar)
	
	--fundo
	love.graphics.setColor(255,255,255)
 	love.graphics.draw(finalImg, 1, 1,0,1,1)

	--botao reiniciar
 	love.graphics.setColor(0,255,0)
 	love.graphics.setFont(love.graphics.newFont("fonte/emmasophia.ttf", 35 ))
 	love.graphics.print("JOGAR", ix+70, iy)
 	love.graphics.print("NOVAMENTE", ix, iy+70)


 	--imagem gameover
 	love.graphics.setColor(0, 0, 0)
 	love.graphics.setFont(love.graphics.newFont("fonte/04B_30__.TTF", 100 ))
 	love.graphics.print("Game Over",250,150)

 	--pilha de bolas
	love.graphics.setColor(255, 255, 255)
	love.graphics.draw(bolasImg1, bolax, bolay,0,0.5,0.5)
	love.graphics.draw(bolasImg1, bolax1, bolay1,0,0.5,0.5)
	love.graphics.draw(bolasImg1, bolax2, bolay2,0,0.5,0.5)
	love.graphics.draw(bolasImg1, bolax3, bolay3,0,0.5,0.5)
	love.graphics.draw(bolasImg1, bolax4, bolay4,0,0.5,0.5)
	love.graphics.draw(bolasImg1, bolax5, bolay5,0,0.5,0.5)

	--personagem
	if personagem==1 then
		love.graphics.draw(jogador.frente, 250, 500,0,3,3)
	elseif personagem==2 then
		love.graphics.draw(jogador.frente2, 250, 500,0,3,3)
	end
	

 	--imagem score
 	love.graphics.setColor(0, 0, 255)--cor
 	love.graphics.setFont(love.graphics.newFont("fonte/04B_30__.TTF", 50 ))
 	love.graphics.print("score", 550, 300)--texto
 	love.graphics.setFont(love.graphics.newFont("fonte/04B_30__.TTF", 40 ))
 	love.graphics.print(score,630,370)--score
	 	
end