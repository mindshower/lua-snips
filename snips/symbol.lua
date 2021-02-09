-- Useful for unique types/enumerations where the mutability of tables aren't preferred.

local function newSymbol(signature)
    local symbol = newproxy(true)
    getmetatable(symbol).__tostring = function()
        return ('symbol: \'%s\''):format(signature or 'Symbol')
    end
    
    return symbol
end

--[[
  local none = newSymbol('none')
  print(none) --> symbol: 'none'
]]
