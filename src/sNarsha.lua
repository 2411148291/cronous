-- Decompiled using luadec 2.1 r80 from http://code.google.com/p/luadec
-- Command line: C:\研究\科洛斯(Cronous)\luadec解密工具\sNarsha.lub 

ScriptVersion = 8
nState = 0
nMonster = 0
nM1 = 1
nM2 = 2
nM3 = 3
Baina = 316
B1_x = 641
B1_y = 479
B1_dir = 180
B1_reaction = 60
B2_x = 115
B2_y = 153
B2_dir = 90
B2_reaction = 60
B1 = 0
B2 = 0
Narsha_Fare = 30000
B_Say = "分钟后才能搭乘,要去NARESHA湖必须要有30000CRO."
R_zone = 92
R_x = 750
R_y = 1052
R_z = 11
Q_zone = 93
Q_x = 750
Q_y = 1052
Q_z = 11
S_zone = 94
S_x = 419
S_y = 341
S_z = 14
F_zone = 33
F_x = 577
F_y = 471
F_z = -8
ReadyTime = 1000
PlayTime_1 = 30000
PlayTime_2 = 30000
PlayTime_3 = 60000
S_ReadyTime = 1000
F_ReadyTime = 600
NO_QuestTime = 18000
R_Time = 1
P_Time1 = 2
P_Time2 = 3
P_Time3 = 4
S_RTime = 5
F_RTime = 6
MonsterCount = 7
NO_Quest = 11
NReady = 12
nMonster1 = {}
nMonster1.Total = 80
nMonster1.Code = {2730, 2730, 2730, 2730, 2730, 2730, 2730, 2730, 2730, 2730, 2730, 2730, 2730, 2730, 2730, 2730, 2730, 2730, 2730, 2730, 2731, 2731, 2731, 2731, 2731, 2731, 2731, 2731, 2731, 2731, 2731, 2731, 2731, 2731, 2731, 2731, 2731, 2731, 2731, 2731, 2732, 2732, 2732, 2732, 2732, 2732, 2732, 2732, 2732, 2732, 2732, 2732, 2732, 2732, 2732, 2732, 2732, 2732, 2732, 2732, 2733, 2733, 2733, 2733, 2733, 2733, 2733, 2733, 2733, 2733, 2733, 2733, 2733, 2733, 2733, 2733, 2733, 2733, 2733, 2733}
nMonster1.X = {610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 670, 670, 670, 670, 670, 670, 670, 670, 670, 670, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 820, 820, 820, 820, 820, 820, 820, 820, 820, 820}
nMonster1.Y = {680, 700, 720, 740, 760, 780, 800, 820, 840, 860, 960, 980, 1000, 1020, 1040, 1060, 1080, 1100, 1120, 1140, 1240, 1260, 1280, 1300, 1320, 1340, 1360, 1380, 1400, 1460, 1540, 1560, 1580, 1600, 1620, 1640, 1660, 1680, 1700, 1720, 680, 700, 720, 740, 760, 780, 800, 820, 840, 860, 960, 980, 1000, 1020, 1040, 1060, 1080, 1100, 1120, 1140, 1240, 1260, 1280, 1300, 1320, 1340, 1360, 1380, 1400, 1460, 1540, 1560, 1580, 1600, 1620, 1640, 1660, 1680, 1700, 1720}
nMonster2 = {}
nMonster2.Total = 66
nMonster2.Code = {2737, 2737, 2737, 2738, 2738, 2738, 2734, 2734, 2734, 2734, 2734, 2734, 2734, 2734, 2734, 2734, 2734, 2734, 2734, 2734, 2734, 2734, 2734, 2734, 2734, 2734, 2735, 2735, 2735, 2735, 2735, 2735, 2735, 2735, 2735, 2735, 2735, 2735, 2735, 2735, 2735, 2735, 2735, 2735, 2735, 2735, 2736, 2736, 2736, 2736, 2736, 2736, 2736, 2736, 2736, 2736, 2736, 2736, 2736, 2736, 2736, 2736, 2736, 2736, 2736, 2736}
nMonster2.X = {670, 670, 670, 820, 820, 820, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 600, 630, 660, 690, 720, 750, 780, 810, 840, 870, 600, 630, 660, 690, 720, 750, 780, 810, 840, 870}
nMonster2.Y = {1540, 1560, 1580, 1540, 1560, 1580, 680, 700, 720, 740, 760, 780, 800, 820, 840, 860, 960, 980, 1000, 1020, 1040, 1060, 1080, 1100, 1120, 1140, 680, 700, 720, 740, 760, 780, 800, 820, 840, 860, 960, 980, 1000, 1020, 1040, 1060, 1080, 1100, 1120, 1140, 1650, 1650, 1650, 1650, 1650, 1650, 1650, 1650, 1650, 1650, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600, 1600}
nMonster3 = {}
nMonster3.Total = 50
nMonster3.Code = {2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2737, 2738, 2738, 2738, 2738, 2738, 2738, 2738, 2738, 2738, 2738, 2738, 2738, 2738, 2738, 2738, 2738, 2738, 2738, 2738, 2738}
nMonster3.X = {610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 610, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 880, 610, 610, 610, 610, 610, 880, 880, 880, 880, 880}
nMonster3.Y = {960, 980, 1000, 1020, 1040, 1060, 1080, 1100, 1120, 1140, 1240, 1260, 1280, 1300, 1320, 1340, 1360, 1380, 1400, 1460, 960, 980, 1000, 1020, 1040, 1060, 1080, 1100, 1120, 1140, 1240, 1260, 1280, 1300, 1320, 1340, 1360, 1380, 1400, 1460, 1540, 1560, 1580, 1600, 1620, 1540, 1560, 1580, 1600, 1620}
N1_R = 0
N1_S = 5
N2_R = 30
N2_S = 35
OnTimer = function(TimerID)
  if TimerID == R_Time then
    QuestStart()
  elseif TimerID == P_Time1 then
    nMonster_Regen(2)
  elseif TimerID == P_Time2 then
    nMonster_Regen(3)
  elseif TimerID == P_Time3 then
    QuestFail()
  elseif TimerID == S_RTime then
    QuestEnd(S_zone, S_x, S_y, S_z)
  elseif TimerID == F_RTime then
    QuestEnd(F_zone, F_x, F_y, F_z)
  elseif TimerID == MonsterCount then
    ShowCount()
  elseif TimerID == NO_Quest then
    QuestEnd(F_zone, F_x, F_y, F_z)
  elseif TimerID == NReady then
    NarshaPrint()
  end
end

OnLoad = function()
  return 1
end

OnReaction = function(reaction, userhandle, buttonindex)
  local i = 0
  local minute = 0
  minute = GetDayTime(DDT_MINUTE)
  
  -- 凯纳斯村
  if reaction == B1_reaction and F_zone == GetZoneUser(userhandle) and buttonindex == 2 then
    if GetLevelUser(userhandle) >= 80 then
	  -- 时间分钟在0和5之间，传送到碧海方舟92
      if N1_R <= minute and minute <= N1_S then
        DebugMessage("啪铰啊瓷~!")
        i = MinusGold(userhandle, Narsha_Fare)
		if i == 1 then
			MoveZoneUser(userhandle, R_zone, R_x, R_y, R_z)
		end
	  else
			SayNPC(B1, 60 - minute .. B_Say)
	  end
	else
		SayNPC(B1, "只有80级以上的角色可以搭乘.")
	end
  end
  -- 神秘湖
  if reaction == B2_reaction and S_zone == GetZoneUser(userhandle) and buttonindex == 2 then
    -- 时间分钟在30和35之间，传送到碧海方舟92
    if N2_R <= minute and minute <= N2_S then
      i = MinusGold(userhandle, Narsha_Fare)
	  if i == 1 then
    	MoveZoneUser(userhandle, R_zone, R_x, R_y, R_z)
	  end
	elseif minute < N2_R then
		SayNPC(B2, 30 - minute .. B_Say)
	elseif N2_S < minute then
		SayNPC(B2, 60 - minute + 30 .. B_Say)
    end
  end
end

OnStart = function()
  DebugMessage("sNarsha Script Start! {1}", ScriptVersion)
  SetZoneMode(R_zone, ZF_TARGET)
  SetZoneMode(Q_zone, ZF_TARGET)
  -- 凯纳斯村创建 贝纳
  B1 = CreateNPC(Baina, F_zone, B1_x, B1_y, -2000, B1_dir, B1_reaction)
  -- 神秘湖创建 贝纳
  B2 = CreateNPC(Baina, S_zone, B2_x, B2_y, -2000, B2_dir, B2_reaction)
  DebugMessage("急馒厘 NPC积己")
  SetTimer(NReady, 6000)
end

NarshaPrint = function()
  local i = 0
  local userhandle = 0
  local minute = 0
  minute = GetDayTime(DDT_MINUTE)
  
  if N1_R <= minute and minute < N1_S then
	while true do
		userhandle = GetNextZoneUser(userhandle, R_zone)
		if userhandle == 0 then
		  break
		end
		PrintEx(userhandle, 63, MSGTYPE_CHAT, 16777113, 5 - minute)
    end
  end
  if N1_S <= minute and minute < N2_R then
    QuestReady()
	return
  end
  if N2_R <= minute and minute < N2_S then
    while 1 do
    userhandle = GetNextZoneUser(userhandle, R_zone)
    if userhandle == 0 then
      break
    end
    PrintEx(userhandle, 63, MSGTYPE_CHAT, 16777113, 35 - minute)
	end
  end
  if N2_S <= minute then
    MoveNarsha()
	return
  end
end

MoveNarsha = function()
  local userhandle = 0
  local minute = 0
  minute = GetDayTime(DDT_MINUTE)
  if N2_S <= minute and minute < N2_S + 1 then
    while 1 do
		userhandle = GetNextZoneUser(userhandle, R_zone)
		if userhandle == 0 then
		  break
		end
		MoveZoneUser(userhandle, Q_zone, Q_x, Q_y, Q_z)
    end
	SetTimer(NO_Quest, NO_QuestTime)
  end
end

QuestReady = function()
  local userhandle = 0
  local minute = 0
  local SayNPC_user = 0
  minute = GetDayTime(DDT_MINUTE)
  if N1_S <= minute and minute < N1_S + 1 then
    while 1 do
		userhandle = GetNextZoneUser(userhandle, R_zone)
		if userhandle == 0 then
		  break
		end
		MoveZoneUser(userhandle, Q_zone, Q_x, Q_y, Q_z)
    end
    SetTimer(R_Time, ReadyTime)
    nState = 4
    DebugMessage("1瞒 府哩 措扁吝")
    while 1 do
		SayNPC_user = GetNextZoneUser(SayNPC_user, Q_zone)
		if SayNPC_user == 0 then
			break
		end
		PrintEx(SayNPC_user, 58, MSGTYPE_CHAT, 16777113)
	end
  end
end

QuestStart = function()
  DebugMessage("涅胶飘 矫累")
  local userhandle = 0
  KillTimer(R_Time)
  DebugMessage("涅胶飘胶鸥飘 阁胶磐府哩窃")
  nMonster_Regen(1)
  SetTimer(MonsterCount, 100)
end

ShowCount = function()
  local userhandle = 0
  local npcCount = 0
  npcCount = GetNPCZoneCount(Q_zone) - 2
  while 1 do
    userhandle = GetNextZoneUser(userhandle, Q_zone)
    if userhandle == 0 then
      break
    end
    SendEventUser(userhandle, NOTICE_EVENT, NOTICE_EVENT_COUNTON, "", 0)
    SendEventUser(userhandle, NOTICE_COUNT, npcCount, "", 0)
  end
  if npcCount < 1 then
    if nState == 1 then
   	    nMonster_Regen(2)
    elseif nState == 2 then
		nMonster_Regen(3)
	elseif nState == 3 then
		QuestSuccess()
	end
  end
end

nMonster_Regen = function(nMonster)
  local i = 0
  local SayNPC_user = 0
  if nMonster == nM1 then
    for i = 1, nMonster1.Total do
      CreateNPC(nMonster1.Code[i], Q_zone, nMonster1.X[i], nMonster1.Y[i])
    end
    DebugMessage("1瞒 阁胶磐 积己肯丰")
    KillTimer(R_Time)
    SetTimer(P_Time1, PlayTime_1)
    nState = 1
  elseif nMonster == nM2 then
    for i = 1, nMonster2.Total do
      CreateNPC(nMonster2.Code[i], Q_zone, nMonster2.X[i], nMonster2.Y[i])
    end
    DebugMessage("2瞒 阁胶磐 积己肯丰")
    KillTimer(P_Time1)
    SetTimer(P_Time2, PlayTime_2)
    nState = 2
  elseif nMonster == nM3 then
    for i = 1, nMonster3.Total do
      CreateNPC(nMonster3.Code[i], Q_zone, nMonster3.X[i], nMonster3.Y[i])
    end
    DebugMessage("3瞒 阁胶磐 积己肯丰")
    KillTimer(P_Time2)
    SetTimer(P_Time3, PlayTime_3)
    nState = 3
    while 1 do
		SayNPC_user = GetNextZoneUser(SayNPC_user, Q_zone)
		if SayNPC_user == 0 then break end
		PrintEx(SayNPC_user, 59, MSGTYPE_CHAT, 16777113)
	end
  end
end

QuestEnd = function(_zone, _x, _y, _z)
  local userhandle = 0
  while 1 do
    userhandle = GetNextZoneUser(userhandle, Q_zone)
    if userhandle == 0 then break end
    MoveZoneUser(userhandle, _zone, _x, _y, _z)
    SendEventUser(userhandle, NOTICE_CONTROL, NOTICE_EVENT_GRAYOFF, "", 0)
  end
  KillTimer(S_RTime)
  KillTimer(F_RTime)
  KillTimer(NO_Quest)
  KillTimer(P_Time3)
  nState = 0
  DebugMessage("捞悼 肯丰")
end

QuestSuccess = function()
  local userhandle = 0
  local SayNPC_user = 0
  KillTimer(MonsterCount)
  while true do 
	  userhandle = GetNextZoneUser(userhandle, Q_zone)
	  if userhandle == 0 then
		break
	  end
	  SendEventUser(userhandle, NOTICE_EVENT, NOTICE_EVENT_COUNTOFF, "", 0)
	  ShowEffectTarget(145, 1, userhandle)
  end
  KillTimer(P_Time3)
  SetTimer(S_RTime, S_ReadyTime)
  nState = 4
  while true do
    SayNPC_user = GetNextZoneUser(SayNPC_user, Q_zone)
    if SayNPC_user == 0 then
      break
    end
    PrintEx(SayNPC_user, 60, MSGTYPE_CHAT, 16777113)
    PrintEx(SayNPC_user, 61, MSGTYPE_CHAT, 16777113)
  end
end

QuestFail = function()
  local userhandle = 0
  local npchanldle = 0
  local SayNPC_user = 0
  KillTimer(MonsterCount)
  while true do
	  SayNPC_user = GetNextZoneUser(SayNPC_user, Q_zone)
	  if SayNPC_user == 0 then
		break
	  end
	  PrintEx(SayNPC_user, 62, MSGTYPE_CHAT, 16777113)
  end
  while true do
	  npchandle = GetNextZoneNPC(npchandle, Q_zone)
	  if npchandle == 0 then
		break
	  end
	  DestroyNPC(npchandle)
  end
  while 1 do
    userhandle = GetNextZoneUser(userhandle, Q_zone)
    if userhandle == 0 then
      break
    end
    SendEventUser(userhandle, NOTICE_EVENT, NOTICE_EVENT_COUNTOFF, "", 0)
    SendEventUser(userhandle, NOTICE_CONTROL, NOTICE_ZONE_GRAYON, "", 0)
  end
  KillTimer(P_Time3)
  SetTimer(F_RTime, F_ReadyTime)
  nState = 4
end

OnDestroy = function()
  local userhandle = 0
  local npchandle = 0
  while true do
	  userhandle = GetNextZoneUser(userhandle, Q_zone)
	  if userhandle == 0 then
		break
	  end
	  MoveTown(userhandle)
	  SendEventUser(userhandle, NOTICE_CONTROL, NOTICE_EVENT_GRAYOFF, "", 0)
	  SendEventUser(userhandle, NOTICE_EVENT, NOTICE_ZONE_COUNTOFF, "", 0)
  end
  while 1 do
    npchandle = GetNextZoneNPC(npchandle, Q_zone)
    if npchandle == 0 then
      break
    end
    DestroyNPC(npchandle)
  end
  KillTimer(R_Time)
  KillTimer(P_Time1)
  KillTimer(P_Time2)
  KillTimer(S_RTime)
  KillTimer(F_RTime)
  KillTimer(MonsterCount)
  KillTimer(NO_Quest)
  KillTimer(NReady)
  DestroyNPC(B1)
  DestroyNPC(B2)
  nState = 0
end
