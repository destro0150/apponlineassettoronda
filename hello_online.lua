-- Script básico para Assetto Corsa CSP Online
-- Muestra mensaje + datos en vivo del auto

function script.update(dt)
    local car = ac.getCar(0) -- 0 = tu propio auto

    if car then
        local velocidad = string.format("%.1f km/h", car.speedKmh)
        local rpm = string.format("%.0f RPM", car.rpm)

        -- Muestra cada línea en pantalla
        ac.debug("✅ Script funcionando!", 0, 0, 0xFF00FF00) -- Verde
        ac.debug("Velocidad: " .. velocidad, 1, 0, 0xFFFFFF00) -- Amarillo
        ac.debug("RPM: " .. rpm, 2, 0, 0xFFFF0000) -- Rojo
    else
        ac.debug("Esperando datos del coche...", 0, 0, 0xFFFF0000)
    end
end
