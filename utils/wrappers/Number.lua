
local Number = {}

    Number.new = function(num)

        local class_number = setmetatable(
            {num}, 
            {
                __index = {

                    setNum = function(self, num)
                        self.num = num
                    end,

                    getNum = function(self)
                        return self.num
                    end
                },

                __tostring = function(self)
                    return tostring(self.num)
                end
            }
        )

        class_number.num = num

        return class_number
    end

    Number.clone = function(class_number)
        return Number.new(class_number.num)
    end

return Number
