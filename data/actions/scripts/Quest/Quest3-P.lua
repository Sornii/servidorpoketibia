function onUse(cid, item, frompos, item2, topos)

	if item.uid == 10005 then
 	queststatus = getPlayerStorageValue(cid,987581)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"Voc� completou a box 7..")
 	doPlayerAddItem(cid,2160,200)
        doPlayerAddItem(cid,13194,1)
 	doTeleportThing(cid,{x=1054, y=1050, z=7})
        setPlayerStorageValue(cid,987581,1)
 	else
 	doPlayerSendTextMessage(cid,22,"Voce Ja Concluiu A Quest.")
 	end
	else
	return 0
	end

	return 1
	end 