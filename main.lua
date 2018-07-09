
--BIBLIOTECA USADA NA LOAD
require ("libs/F_load/loadInicio")
require ("libs/F_load/loadJogo")
require ("libs/F_load/loadGameOver")
--BIBLIOTECA UTILIZADA NA UPDATE
require ("libs/F_update/funcoesDaUpdate")
require ("libs/F_update/ranking")
-- BIBLIOTECA DA DRAW 
require ("libs/F_draw/drawPaginaInicial")
require ("libs/F_draw/drawJogo")
require ("libs/F_draw/drawGameOver")



function checarColisao(ax, ay, ar, bx, by, br)
  dx = bx - ax
  dy = by - ay
  distancia = math.sqrt(dx * dx + dy * dy)
 return distancia < ar + br
end

function alvo()
	ax=love.math.random(116,1250)
	ay=love.math.random(450,50)
	time=2
end

function gameover()
	botaoPressionado=false
	lBotaoReiniciar = 400
	hBotaoReiniciar = 100
	ix=130
	iy=350
	finalImg=love.graphics.newImage("img/fundogameover.png")
end



function love.load()
	love.graphics.setBackgroundColor(255, 255, 255)
	janela()
	inicio()
	jogador()
	circulo()
	alvo()
	flag2=true -- aciona a movimentaçao da personagem
	flag3=false -- aciona a condiçao de colisao apenas depois que a bola estiver parada
	flag=true -- faz com que a bola so possa ser atirada uma vez por rodada
	score=0
	fonte = love.graphics.newFont( "fonte/04B_30__.TTF", 30 )
	fonte2 = love.graphics.newFont( "fonte/emmasophia.ttf", 30 )
	status="paginaInicial"
	mousex, mousey = love.mouse.getPosition( )
	botaoPessionado=false
	ranking()
	gameover()
	jogoImg=love.graphics.newImage("img/fundojogo.png")
	bolaspilha()
	somFundo = love.audio.newSource( "sounds/sound1.mp3", "stream" )
	love.audio.play( somFundo )
	somAcerto = love.audio.newSource( "sounds/acerto.mp3", "static" )
end


function love.update(dt)
	if status=="jogo" then -- JOGO
	
		comandosJogador(dt)
	
		comandosBola(dt)
	                                                 
 		if checarColisao(cx, cy, 10, ax, ay, 30) then
			colidir=true
			love.audio.play( somAcerto )
		else 
			colidir=false
		end

		colisaoBolaAlvo(dt)

	elseif status == "gameOver" then
		fazendoRanking(dt)
		pilhaBolas(dt)
	end
	
	love.mousepressed(mousex, mousey)

end

function love.draw()
	if status=="paginaInicial" then -- INICIO
		paginaInicialGraphics ()
	elseif status=="jogo" then -- JOGO
		jogoGraphics ()
 	elseif status=="gameOver" then -- GAME OVER
 		gameOverGraphics()
	 	rankingGraphics ()
	 	pilhaBolas()
 	end
	
end
