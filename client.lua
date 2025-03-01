local spawnPos = vector3(-425.5107, 1123.4884, 325.8495) -- the cords for the spawn (default spawn is the obersvatory)

AddEventHandler('onClientGameTypeStart', function()
    exports.spawnmanager:setAutoSpawnCallback(function()
        exports.spawnmanager:spawnPlayer({
            x = spawnPos.x,
            y = spawnPos.y,
            z = spawnPos.z,
            model = 'a_m_y_hipster_01', -- The ped you will spawn as when you first load in
        }, function()
            TriggerEvent('chat:addMessage', {
                args = { 'Welcome to [your server name]\' Enjoy your stay!', } -- message that gets sent to a member when they join the server
            })
        end)
    end)

    exports.spawnmanager:setAutoSpawn(true)
    exports.spawnmanager:forceRespawn()
end)