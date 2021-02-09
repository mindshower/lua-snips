local function switch(value, cases, ...)
    (cases[value] or cases['default'])(...) 
end

--[[

switch('apple', {
  ['banana'] = print,
  ['tomato'] = print,
  ['apple'] = print,
  
  ['default'] = function()
    -- raise an error or smth
  end
}, ...)

]]
