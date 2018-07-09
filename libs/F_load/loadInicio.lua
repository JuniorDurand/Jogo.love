function janela()
	love.window.setFullscreen(true, "desktop")
	--love.window.maximize()
	largura,altura = love.window.getDesktopDimensions(display)
end

function inicio()
	inicioImg=love.graphics.newImage("img/TelaInicio.png")
	botaoPressionado=false
	lBotaoIniciar=200
	hBotaoIniciar=200
	Ix=200
	Iy=450
	Ix2=400
end