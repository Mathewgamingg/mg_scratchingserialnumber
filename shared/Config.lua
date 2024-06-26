Config = {

    Locale = GetConvar('esx:locale', 'en'),
    Notification = 'ESX', -- Type: ESX, OXLIB, OKOK

    UpdateCheck = true,

    EnableLocations = true,
    UseTargetSystem = true, -- Type: true (use ox_target), false (use markers)

    Command = {
        Enable = true,

        CommandName = 'scratchgunserial', -- Command, wich scatch the serial number
        CommandDescription = 'Scratch your gun serial number!' -- Command description
    },

    Locations = {

        ["Location01"] = {

            coords = {
                [1] = vector3(1223.9769, 1899.6410, 77.9734),
                [2] = vector3(1959.6149, 3810.7300, 32.3967),
            },
            
        }

    },

    NeedItem = {
        Enable = true,
        DeleteItemAfterUse = true, -- Delete item after use
    
        ItemName = 'lockpick', -- Item Name
        ItemCount = 1,

    },

    ProgressBar = {
        Duration = 5 -- In Seconds
    },

    Animation = {
        Dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
        Clip = 'machinic_loop_mechandplayer'
    },

    Markers = {
        MarkerSprite = 3,
        MarkerColor = {238, 24, 24},
        MarkerSize = 0.2,
    }

    DiscordLogs = { -- Set Webhook URL in server/main.lua at line 1!

        Enable = true,
     
        WebhookName = "Scratch Gun S.N",     
        Colour = 2600155,
        Title = "New Gun Serial Number Scratch!",
        Description = "The player **{NAME}** was scratched serial gun number.\nOriginal Gun Serial Number: *{SERIAL-NUMBER}*\n\n**More Information**\n>>> **Name:** *{NAME}*\n**SteamID:** {STEAM}\n**DiscordID:** {DISCORD}",
  
    },
}

-- If you need help with notifications, join the discord server and open a ticket.
-- Discord: https://discord.respectdevelopment.eu
RegisterNetEvent('mg:scratchgunserialnumber:notify')
AddEventHandler('mg:scratchgunserialnumber:notify', function(title, message)
    if Config.Notification == 'ESX' then
        ESX = exports['es_extended']:getSharedObject()
        ESX.ShowNotification(message)
    elseif Config.Notification == 'OKOK' then
        exports['okokNotify']:Alert(title, message, 3000, 'information', playSound)
    elseif Config.Notification == 'OXLIB' then
        lib.notify({
            title = title,
            description = message,
            type = 'inform'
        })
    elseif Config.Notification == 'CUSTOM' then
        print('[WARNING] Set your own notification in shared/config.lua at line 84.') 
        -- Set your own notifications here.
    else
        print('[ERROR] Your notification type is not valid.')
    end
end)


