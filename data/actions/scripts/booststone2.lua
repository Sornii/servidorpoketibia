function onUse(cid, item, frompos, item2, topos)
 
local cfg = {
    qnt = 100,       --Quantos boosts o pok�mon ir� receber.
    max = 1000,      --Boost m�ximo do seu servidor.
    chance = 100,   --Chance de falhar, em %
    boost_fail = 1000,  --A partir de quantos boosts poder� falhar.
}
 
local myball = getPlayerSlotItem(cid, 8).uid
local summon = getCreatureSummons(cid)[1]
local boost = getItemAttribute(myball, "boost") or 0
 
    if myball <= 0 then
        return doPlayerSendCancel(cid, "Coloque um pok�mon no Main Slot!")
    elseif #getCreatureSummons(cid) <= 0 then
        return doPlayerSendCancel(cid, "Voc� precisa estar usando seu pok�mon para conseguir boost�-lo!")
    elseif boost >= cfg.max then
        return doPlayerSendCancel(cid, "Seu pok�mon j� se encontra no n�vel m�ximo de boost!")
    end
    
    if boost >= cfg.boost_fail then
        if math.random(1, 100) <= cfg.chance then
            doItemSetAttribute(myball, "boost", (boost + cfg.qnt))
            doSendAnimatedText(getThingPos(summon), "+100 BOOST", 215)
            doPlayerSendTextMessage(cid, 27, "Seu pok�mon avan�ou do n�vel [+"..tonumber(boost).."] de boost para o n�vel [+"..tonumber(boost + 100).."].")
            doRemoveItem(item.uid, 1)
        else
            doSendAnimatedText(getThingPos(summon), "Fail!", 215)
            doPlayerSendTextMessage(cid, 27, "Sua boost stone falhou!")
            doRemoveItem(item.uid, 1)
        end
    else
        doItemSetAttribute(myball, "boost", (boost + cfg.qnt))
        doSendAnimatedText(getThingPos(summon), "+100 BOOST", 215)
        doPlayerSendTextMessage(cid, 27, "Seu pok�mon avan�ou do n�vel [+"..tonumber(boost).."] de boost para o n�vel [+"..tonumber(boost + 100).."].")
        doRemoveItem(item.uid, 1)
    end
    return true
end