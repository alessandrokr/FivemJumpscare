
RegisterNetEvent('jumpscare:jumpscare')
RegisterNetEvent('jumpscare:nopermission')

AddEventHandler('jumpscare:nopermission',function(msg)
    SendNUIMessage({
        type = 'noPerm'
    })
end)

AddEventHandler('jumpscare:jumpscare',function(videoFile)
    SendNUIMessage({
        type = 'doJumpscare',
        videoFile = videoFile
    })
end)


