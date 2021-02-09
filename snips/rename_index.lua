local function rename(t, from, to)
    t[to], t[from] = t[from] 
end

--[[
  local t = {money = 100, exp = 129}
  rename(t, 'money', 'coins')
  t --> {coins = 100, exp = 129}
]]
