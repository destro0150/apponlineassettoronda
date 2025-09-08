function script.drawUI()
    local car = ac.getCar(0)
    if not car then return end

    local x = 50
    local y = 200

    render.setFont(render.fontCreate("Arial", 28, render.FontFlags.Bold))
    render.setColor(rgbm(0, 1, 0, 1))
    render.drawText(x, y, "✅ Script funcionando!")

    render.setColor(rgbm(1, 1, 0, 1))
    render.drawText(x, y + 35, string.format("Velocidad: %.1f km/h", car.speedKmh))

    render.setColor(rgbm(1, 0, 0, 1))
    render.drawText(x, y + 70, string.format("RPM: %.0f", car.rpm))
end
