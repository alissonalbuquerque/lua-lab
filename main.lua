
local WString = require('utils.wrappers.String')

local str = WString.new('teste')
local str_copy = WString.clone(str)

str:setStr('String 00')
print(str:upper())
