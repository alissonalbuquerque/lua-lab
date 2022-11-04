
local Boolean = {}

    Boolean.new = function(bool)

        local class_boolean = setmetatable(
            {bool}, 
            {
                __index = {

                    setBool = function(self, bool)
                        self.bool = bool
                    end,

                    getBool = function(self)
                        return self.bool
                    end
                },

                __tostring = function(self)
                    return tostring(self.bool)
                end
            }
        )

        class_boolean.bool = bool

        return class_boolean
    end

    Boolean.clone = function(class_boolean) 
        return Boolean.new(class_boolean.bool)
    end

return Boolean
