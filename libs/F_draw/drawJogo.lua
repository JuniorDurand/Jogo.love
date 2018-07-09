function jogoGraphics ()
	
	love.graphics.setColor(255,255,255)
 	love.graphics.draw(jogoImg, 1, 1,0,1,1)

 	--alvo
	love.graphics.setColor(255, 0, 0)--vermelho
 	love.graphics.circle("fill", ax, ay, 50, 100)
	love.graphics.setColor(0, 255, 0)--verde
 	love.graphics.circle("fill", ax, ay, 30, 50) 
 	love.graphics.setColor(0, 0, 0)--preto
 	love.graphics.circle("fill", ax, ay, 2, 50)


 	--circulo
 	love.graphics.setColor(255, 255, 0)--preto
 	love.graphics.circle("fill", cx, cy, 10, 50)--circulo

	--personagem
	love.graphics.setColor(255, 255, 255)--branco
 if personagem==1 then
	if love.keyboard.isDown("left") then
 		love.graphics.draw(jogador.esquerda, jogador.x, jogador.y,0,2,2)--imagem do personagem

 	elseif love.keyboard.isDown("right") then
 		love.graphics.draw(jogador.direita, jogador.x, jogador.y,0,2,2)

 	else 
 		love.graphics.draw(jogador.costas, jogador.x, jogador.y,0,2,2)
 	end
 end

 if personagem==2 then

	if love.keyboard.isDown("left") then
 		love.graphics.draw(jogador.esquerda2, jogador.x, jogador.y,0,2,2)--imagem do personagem

 	elseif love.keyboard.isDown("right") then
 		love.graphics.draw(jogador.direita2, jogador.x, jogador.y,0,2,2)

 	else 
 		love.graphics.draw(jogador.costas2, jogador.x, jogador.y,0,2,2)
 	end
 end



 	--score
 	love.graphics.setColor(0, 0, 0)--cor
 	love.graphics.setFont(fonte)--fonte	
 	love.graphics.print("score", 1170, 30)--texto
 	love.graphics.setFont(fonte)--fonte
 	love.graphics.print(score,1210,70)--score

 	
 
 	-- barra de força 
 	love.graphics.setColor(255, 0, 0)--vermelho
 	love.graphics.rectangle("fill", 1100, 700, 25*10, 10)
 	love.graphics.setColor(0, 0, 0)--preto
 	love.graphics.rectangle("fill", 1100, 700, velocidade*10, 10)
end