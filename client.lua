Citizen.CreateThread(function()
    while true do Wait(1)
        NiPsEeNvaletulMeu = GetPlayerPed(-1)
        viata = (GetEntityHealth(NiPsEeNvaletulMeu)-100)
	if viata >= 35 then 
    	drawTxt(0.035, 0.96, 0.35, 4, "~g~VIATA: ~w~".. viata .." ~g~HP", 255, 255, 255, true)
	else
    	drawTxt(0.035, 0.96, 0.35, 4, "~r~VIATA: ~w~".. viata .." ~r~HP", 255, 255, 255, true)
		end
    end
end)


function drawTxt(x, y, scale, font, text, r, g, b, outline)
    if r == nil then r,g,b = 255,255,255 end
    SetTextFont(font)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r,g,b, 255)
    if outline == true then
        SetTextDropShadow(0,0,0,0,255)
        SetTextEdge(2, 0, 0, 0, 255)
        SetTextDropShadow()
        SetTextOutline()
    end
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x , y)
end
