local ac = require("ac")
local ui = require("ui")

-- Función que se ejecuta en cada frame para dibujar texto en pantalla
function draw()
    ui.drawText(10, 10, "Hola", 1, 1, 1, 1) -- x,y en pixeles, color RGBA blanco
end

-- Se registra la función draw para que se ejecute siempre
ac.addRenderCallback(draw)
