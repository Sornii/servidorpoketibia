-- Script Made By: Sonkis (Gabriel Lisboa)
-- Start Config --
local topos = {x=1799, y=1813, z=4} -- Posi��o para onde o player ser� teleportado.
-- End Config --

function onUse(cid)
 if doTeleportThing(cid, topos) then
doSendMagicEffect(getThingPos(cid), 162)
end
end