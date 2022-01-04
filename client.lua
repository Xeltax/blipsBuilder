Citizen.CreateThread(function()
    for k, v in pairs(Config.Blips) do
      local blip = AddBlipForCoord(v.x, v.y, v.z)
      SetBlipSprite(blip, v.id)
      SetBlipDisplay(blip, 4)
      SetBlipScale(blip, v.taille)
      SetBlipColour(blip, v.couleur)
      SetBlipAsShortRange(blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(v.titre)
      EndTextCommandSetBlipName(blip)
    end
end)

print('^6Script by ^1Xeltax^6')