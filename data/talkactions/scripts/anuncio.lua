local config = {
storage = 19400, -- storage em que ser� salvo o tempo
cor = "green", -- de acordo com o constant.lua da lib
tempo = 30, -- em minutos
itemid = 2160,
price = 50, -- quantidade de dinheiro que ir� custar
level = 100 -- level pra poder utilizar o broadcast
}


function onSay(cid, words, param, channel)
if(param == '') then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Command param required.")
return true
end


if getPlayerLevel(cid) >= config.level then
if getPlayerStorageValue(cid, config.storage) - os.time() <= 0 then
if doPlayerRemoveItem(cid, config.itemid, config.price) then
setPlayerStorageValue(cid, config.storage, os.time() + (config.tempo*1)) 
doBroadcastMessage(""..getCreatureName(cid).." [ANUNCIO]: "..param.."", config.cor)
doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Vc Falo Com Sucesso " ..config.tempo.. " second(s) espere.")
else
doPlayerSendCancel(cid, "Voc� Prescisa " ..config.price.. " De Tds Pra Falar Novo Anuncio.")
return true
end
else
doPlayerSendCancel(cid, "Vou Falo no Anuncio " ..(getPlayerStorageValue(cid, config.storage) - os.time()).. " seconds Espere.")
return true
end
else
doPlayerSendCancel(cid, "You have to be level " ..config.level.. " or more in order to use broadcast.")
end
end