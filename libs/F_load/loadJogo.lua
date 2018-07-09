
function jogador()
	jogador = {}
	jogador.x=50
	--jogador.y=500
	--{{{------}}}
	jogador.y=600 
	jogador.esquerda=love.graphics.newImage("img/spriteEsquerda.png")
	jogador.costas=love.graphics.newImage("img/spriteCostas.png")
	jogador.frente=love.graphics.newImage("img/spriteFrente.png")
	jogador.direita=love.graphics.newImage("img/spriteDireita.png")

	jogador.esquerda2=love.graphics.newImage("img/spriteEsquerda2.png")
	jogador.costas2=love.graphics.newImage("img/spriteCostas2.png")
	jogador.frente2=love.graphics.newImage("img/spriteFrente2.png")
	jogador.direita2=love.graphics.newImage("img/spriteDireita2.png")


end

function circulo()
	cx=jogador.x+50 
	cy=jogador.y+50
	velocidade=0
	tempo=4
	colidir=false
end