local items = {{2160, 100}, {12331, 1}, {11638, 1}, {11639, 1}, {11640, 1}, {11641, 1}}
local min_level = 10    --Level m�nimo para pegar os items do ba�.
local time = 60     --Em minutos. 
local storage = 91838
function onUse(cid, item, frompos, item2, topos)
    if getPlayerLevel(cid) >= min_level then
        if getPlayerStorageValue(cid, storage) < os.time() then
            local it = items[math.random(#items)]
            doPlayerAddItem(cid, it[1], it[2])
            doPlayerSendTextMessage(cid, 27, "Voc� recebeu "..it[2].." "..getItemNameById(it[1])..". Voc� poder� pegar sua pr�xima recompensa em "..time.." minutos.")
            setPlayerStorageValue(cid, storage, os.time() + time * 60)
        else
            return doPlayerSendCancel(cid, "Voc� pegou sua recompensa recentemente.")
        end
    else
        return doPlayerSendCancel(cid, "Voc� n�o possui o n�vel adequado para pegar a recompensa ["..min_lv.."].")
    end
    return true
end