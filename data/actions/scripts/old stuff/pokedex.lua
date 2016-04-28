local rate = 25

function onUse(cid, item, fromPos, itemEx, toPos)
 
if not isCreature(itemEx.uid) then
return true
end

local pokemon = itemEx.uid
local pokemons = {
{"Bulbasaur", 18, 1001},
{"Ivysaur", 38, 1002},
{"Venusaur", 75, 1003},
{"Charmander", 18, 1004},
{"Charmeleon", 38, 1005},
{"Charizard", 75, 1006},
{"Squirtle", 18, 1007},
{"Wartortle", 38, 1008},
{"Blastoise", 75, 1009},
{"Caterpie", 3, 1010},
{"Metapod", 10, 1011},
{"Butterfree", 30, 1012},
{"Weedle", 3, 1013},
{"Kakuna", 10, 1014},
{"Beedrill", 30, 1015},
{"Pidgey", 5, 1016},
{"Pidgeotto", 20, 1017},
{"Pidgeot", 60, 1018},
{"Rattata", 3, 1019},
{"Raticate", 20, 1020},
{"Spearow", 5, 1021},
{"Fearow", 50, 1022},
{"Ekans", 12, 1023},
{"Arbok", 30, 1024},
{"Pikachu", 20, 1025},
{"Raichu", 50, 1026},
{"Sandshrew", 18, 1027},
{"Sandslash", 55, 1028},
{"Nidoran Female", 10, 1029},
{"Nidorina", 25, 1030},
{"Nidoqueen", 65, 1031},
{"Nidoran Male", 10, 1032},
{"Nidorino", 25, 1033},
{"Nidoking", 65, 1034},
{"Clefairy", 10, 1035},
{"Clefable", 35, 1036},
{"Vulpix", 16, 1037},
{"Ninetales", 65, 1038},
{"Jigglypuff", 10, 1039},
{"Wigglytuff", 42, 1040},
{"Zubat", 5, 1041},
{"Golbat", 30, 1042},
{"Oddish", 5, 1043},
{"Gloom", 18, 1044},
{"Vileplume", 50, 1045},
{"Paras", 5, 1046},
{"Parasect", 40, 1047},
{"Venonat", 14, 1048},
{"Venomoth", 40, 1049},
{"Diglett", 5, 1050},
{"Dugtrio", 35, 1051},
{"Meowth", 12, 1052},
{"Persion", 25, 1053},
{"Psyduck", 12, 1054},
{"Golduck", 55, 1055},
{"Mankey", 10, 1056},
{"Primeape", 45, 1057},
{"Growlithe", 16, 1058},
{"Arcanine", 70, 1059},
{"Poliwag", 5, 1060},
{"Poliwhirl", 20, 1061},
{"Poliwrath", 60, 1062},
{"Abra", 12, 1063},
{"Kadabra", 40, 1064},
{"Alakazam", 70, 1065},
{"Machop", 16, 1066},
{"Machoke", 38, 1067},
{"Machamp", 70, 1068},
{"Bellsprout", 5, 1069},
{"Weepinbell", 18, 1070},
{"Victreebel", 50, 1071},
{"Tentacool", 12, 1072},
{"Tentacruel", 70, 1073},
{"Geodude", 15, 1074},
{"Graveler", 40, 1075},
{"Golem", 70, 1076},
{"Ponyta", 15, 1077},
{"Rapidash", 55, 1078},
{"Slowpoke", 12, 1079},
{"Slowbro", 45, 1080},
{"Magnemite", 15, 1081},
{"Magneton", 38, 1082},
{"Farfetchd", 35, 1083},
{"Doduo", 12, 1084},
{"Dodrio", 42, 1085},
{"Seel", 14, 1086},
{"Dewgong", 55, 1087},
{"Grimer", 12, 1088},
{"Muk", 30, 1089},
{"Shellder", 5, 1090},
{"Cloyster", 65, 1091},
{"Gastly", 14, 1092},
{"Haunter", 40, 1093},
{"Gengar", 70, 1094},
{"Onix", 50, 1095},
{"Drowzee", 18, 1096},
{"Hypno", 50, 1097},
{"Krabby", 5, 1098},
{"Kingler", 35, 1099},
{"Voltorb", 14, 1100},
{"Electrode", 38, 1101},
{"Exeggcute", 8, 1102},
{"Exeggutor", 48, 1103},
{"Cubone", 18, 1104},
{"Marowak", 45, 1105},
{"Hitmonlee", 60, 1106},
{"Hitmonchan", 60, 1107},
{"Lickitung", 45, 1108},
{"Koffing", 15, 1109},
{"Weezing", 30, 1110},
{"Rhyhorn", 35, 1111},
{"Rhydon", 65, 1112},
{"Chansey", 50, 1113},
{"Tangela", 35, 1114},
{"Kangaskhan", 65, 1115},
{"Horsea", 5, 1116},
{"Seadra", 40, 1117},
{"Goldeen", 10, 1118},
{"Seaking", 25, 1119},
{"Staryu", 15, 1120},
{"Starmie", 38, 1121},
{"Mr. Mime", 45, 1122},
{"Scyther", 60, 1123},
{"Jynx", 55, 1124},
{"Electabuzz", 60, 1125},
{"Magmar", 60, 1126},
{"Pinsir", 42, 1127},
{"Tauros", 40, 1128},
{"Magikarp", 1, 1129},
{"Gyarados", 75, 1130},
{"Lapras", 65, 1131},
{"Ditto", 40, 1132},
{"Eevee", 20, 1133},
{"Vaporeon", 55, 1134},
{"Jolteon", 55, 1135},
{"Flareon", 55, 1136},
{"Porygon", 45, 1137},
{"Omanyte", 20, 1138},
{"Omastar", 70, 1139},
{"Kabuto", 20, 1140},
{"Kabutops", 70, 1141},
{"Aerodactyl", 85, 1142},
{"Snorlax", 85, 1143},
{"Articuno", 100, 1144},
{"Zapdos", 100, 1145},
{"Moltres", 100, 1146},
{"Dratini", 15, 1147},
{"Dragonair", 45, 1148},
{"Dragonite", 85, 1149},
{"Mewtwo", 100, 1150},
{"Mew", 100, 1151},
{"Chikorita", 18, 1152},
{"Bayleef", 38, 1153},
{"Meganium", 75, 1154},
{"Cyndaquil", 18, 1155},
{"Quilava", 38, 1156},
{"Typhlosion", 75, 1157},
{"Totodile", 18, 1158},
{"Croconow", 38, 1159},
{"Feraligatr", 75, 1160},
{"Sentret", 3, 1161},
{"Furret", 28, 1162},
{"Hoothoot", 3, 1163},
{"Noctowl", 38, 1164},
{"Ledyba", 12, 1165},
{"Ledian", 30, 1166},
{"Spinarak", 15, 1167},
{"Ariados", 42, 1168},
{"Crobat", 70, 1169},
{"Chinchou", 14, 1170},
{"Lanturn", 38, 1171},
{"Pichu", 3, 1172},
{"Cleffa", 3, 1173},
{"Iglybuff", 3, 1174},
{"Togepi", 10, 1175},
{"Togetic", 45, 1176},
{"Natu", 15, 1177},
{"Xatu", 45, 1178},
{"Mareep", 12, 1179},
{"Flaaffy", 30, 1180},
{"Ampharos", 65, 1181},
{"Bellossom", 50, 1182},
{"Marill", 14, 1183},
{"Azumarill", 28, 1184},
{"Sudowoodo", 46, 1185},
{"Politoed", 60, 1186},
{"Hoppip", 10, 1187},
{"Skiploom", 20, 1188},
{"Jumpluff", 30, 1189},
{"Aipom", 10, 1190},
{"Sunkern", 3, 1191},
{"Sunflora", 50, 1192},
{"Yanma", 32, 1193},
{"Wooper", 18, 1194},
{"Quagsire", 55, 1195},
{"Espeon", 55, 1196},
{"Umbreon", 55, 1197},
{"Murkrow", 35, 1198},
{"Slowking", 60, 1199},
{"Misdreavus", 47, 1200},
{"Unown", 15, 1201},
{"Wobbuffet", 42, 1202},
{"Girafarig", 42, 1203},
{"Pineco", 18, 1204},
{"Forretress", 55, 1205},
{"Dunsparce", 35, 1206},
{"Gligar", 30, 1207},
{"Steelix", 75, 1208},
{"Snubbull", 20, 1209},
{"Granbull", 42, 1210},
{"Qwilfish", 16, 1211},
{"Scizor", 75, 1212},
{"Shuckle", 10, 1213},
{"Heracross", 60, 1214},
{"Sneasel", 50, 1215},
{"Teddiursa", 20, 1216},
{"Ursaring", 70, 1217},
{"Slugma", 18, 1218},
{"Magcargo", 40, 1219},
{"Swinub", 12, 1220},
{"Piloswine", 70, 1221},
{"Corsola", 42, 1222},
{"Remoraid", 14, 1223},
{"Octillery", 38, 1224},
{"Delibird", 25, 1225},
{"Mantine", 50, 1226},
{"Skarmory", 70, 1227},
{"Houndour", 18, 1228},
{"Houndoom", 70, 1229},
{"Kingdra", 75, 1230},
{"Phanpy", 12, 1231},
{"Donphan", 45, 1232},
{"Porygon2", 60, 1233},
{"Stantler", 35, 1234},
{"Smeargle", 28, 1235},
{"Tyrogue", 15, 1236},
{"Hitmontop", 60, 1237},
{"Smoochum", 3, 1238},
{"Elekid", 3, 1239},
{"Magby", 3, 1240},
{"Miltank", 32, 1241},
{"Blissey", 70, 1242},
{"Raikou", 100, 1243},
{"Entei", 100, 1244},
{"Suicune", 100, 1245},
{"Larvitar", 10, 1246},
{"Pupitar", 50, 1247},
{"Tyranitar", 90, 1248},
{"Lugia", 100, 1249},
{"Ho-oh", 100, 1250},
{"Celebi", 100, 1251},
}

for _,n in pairs(pokemons) do
    if isSummon(pokemon) then
                     if getPokemonName(pokemon) == n[1] and getPlayerLevel(cid) >= n[2] and getPlayerStorageValue(cid, n[3]) <= 0 then
			local j = (n[2]) * rate
			if isBr(cid) then
                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voc� registrou "..n[1].." em sua pokedex!")
                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voc� recebeu "..j.." pontos de experi�ncia.")
			else
                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have unlocked "..n[1].." in your pokedex!")
                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have gained "..j.." experience points.")
			end
			doSendMagicEffect(getThingPos(cid), 210)
                        doPlayerAddExperience(cid, (n[2])*rate)
                        setPlayerStorageValue(cid, n[3], 1)
                     elseif getPokemonName(pokemon) == n[1] and getPlayerLevel(cid) < n[2] and getPlayerStorageValue(cid, n[3]) <= 0 then
			if isBr(cid) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voc� precisa ser no m�nimo n�vel " .. n[2] .. " para registrar esse pokemon.")
			else
                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You need to be at least level " .. n[2] .. " to unlock this pokemon.")
			end
                     elseif getPokemonName(pokemon) == n[1] and getPlayerStorageValue(cid, n[3]) >= 1 then
			local v = fotos[getPokemonName(pokemon)].fotopoke
		     local dexstring = ""..n[1]..".txt"
		     local Dex = io.open('data/pokedex/'..dexstring, 'r')

		local stt = ""
		stt = "General:\mIt's named "..getCreatureName(pokemon).." "
		if pokes[getCreatureName(pokemon)].type2 then
		stt = stt.."("..pokes[getCreatureName(pokemon)].type.."/"..pokes[getCreatureName(pokemon)].type2..")."
		else
		stt = stt.."("..pokes[getCreatureName(pokemon)].type..")."
		end
		stt = stt.."\n\nOffense: "..getOffense(pokemon).."\nDefense: "..getDefense(pokemon)..""
		if isSummon(pokemon) then
		stt = stt.."\nLevel: "..getItemAttribute(getPlayerSlotItem(getCreatureMaster(pokemon), 8).uid, "level")..""
		stt = stt.."\nExperience: "..getItemAttribute(getPlayerSlotItem(getCreatureMaster(pokemon), 8).uid, "exp")..""
		stt = stt.."\nExp. to level up: "..getItemAttribute(getPlayerSlotItem(getCreatureMaster(pokemon), 8).uid, "nextlevelexp")..""
		end
                        --doShowTextDialog(cid, (v), Dex:read("*all"))
		doShowTextDialog(cid, v, stt)
                     Dex:close() 
                     end   
    elseif isMonster(pokemon) then
                     if getPokemonName(pokemon) == n[1] and getPlayerStorageValue(cid, n[3]) <= 0 then
			   local j = (n[2]) * rate
			if isBr(cid) then
                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voc� registrou " .. n[1] .. " em sua pokedex!")
                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voc� recebeu " .. j .. " pontos de experi�ncia.")
			else
                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have unlocked " .. n[1] .. " in your pokedex!")
                        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have gained " .. j .. " experience points.")
			end
			   doSendMagicEffect(getThingPos(cid), 210)
                           doPlayerAddExperience(cid, (n[2])*rate)
                           setPlayerStorageValue(cid, n[3], 1)
                     elseif getPokemonName(pokemon) == n[1] and getPlayerStorageValue(cid, n[3]) >= 1 then
			local v = ((n[3]) + 1376)
		     local dexstring = ""..n[1]..".txt"
		     local Dex = io.open('data/pokedex/'..dexstring, 'r')
		local stt = ""
		stt = "General:\mIt's named "..getCreatureName(pokemon).." "
		if pokes[getCreatureName(pokemon)].type2 then
		stt = stt.."("..pokes[getCreatureName(pokemon)].type.."/"..pokes[getCreatureName(pokemon)].type2..")."
		else
		stt = stt.."("..pokes[getCreatureName(pokemon)].type..")."
		end
		stt = stt.."\n\nOffense: "..getOffense(pokemon).."\nDefense: "..getDefense(pokemon)..""
		if isSummon(pokemon) then
		stt = stt.."\nLevel: "..getItemAttribute(getPlayerSlotItem(getCreatureMaster(pokemon), 8).uid, "level")..""
		stt = stt.."\nExperience: "..getItemAttribute(getPlayerSlotItem(getCreatureMaster(pokemon), 8).uid, "exp")..""
		stt = stt.."\nExp. to level up: "..getItemAttribute(getPlayerSlotItem(getCreatureMaster(pokemon), 8).uid, "nextlevelexp")..""
		end
                        --doShowTextDialog(cid, v, Dex:read("*all"))
		doShowTextDialog(cid, v, stt)
			Dex:close()
                     end
    end
end

local unlock = {}

                for i = 1001, 1251 do
                        if getPlayerStorageValue(itemEx.uid, i) >= 1 then
                                table.insert(unlock, 1)
                        end
                end
                
        if isPlayer(itemEx.uid) then


		local player = itemEx.uid
		local str = ""
		
		local lnl = 0
		local pokess = {}
		local pokesss = ""

			for x = 1001, 1251 do
			local y = tonumber(x - 1000)
				if getPlayerStorageValue(player, x) >= 1 then
					if string.find(getPlayerStorageValue(player, 54842), pokemons[y][1]) then
					str = str.."\n["..threeNumbers(y).."] - "..pokemons[y][1].."   (�)"
					else
					str = str.."\n["..threeNumbers(y).."] - "..pokemons[y][1]..""
					end
				else
				str = str.."\n["..threeNumbers(y).."] -  ?"
				end
					if string.find(getPlayerStorageValue(player, 54842), pokemons[y][1]) then
					lnl = lnl + 1
					end
			end

	if getCreatureName(cid) == getCreatureName(itemEx.uid) then

		if isBr(cid) then
		str = "Informa��es da pokedex:\n\n- Pokemons registrados: "..#unlock.."\n- Pokemons capturados: "..lnl.."\n\nBanco de dados de pokemons:\n"..str..""
		else
		str = "Pokedex Information:\n\n- Unlocked pokemon species: "..#unlock.."\n- Captured pokemon species: "..lnl.."\n\nPokemon Database:\n"..str..""
		end
		doShowTextDialog(cid, 2376, str)
		if isBr(cid) then
		doPlayerSendTextMessage(cid, 27, "Voc� pode abrir uma p�gina da pokedex digitando: \"/dex <name>\". Exemplo: \"/dex Pikachu\".")
		else
		doPlayerSendTextMessage(cid, 27, "You can open a pokedex entry by typing \"/dex <name>\". Example: \"/dex Pikachu\".")
		end
	else
		doPlayerSendTextMessage(cid, 27, getPlayerName(itemEx.uid) .. " has unlocked " .. #unlock .. " pokemons already. He has captured "..lnl.." pokemons already.")
        end
end
return true
end  