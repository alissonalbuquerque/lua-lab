
local String = {}

    String.new = function (str)

        local class_string = setmetatable(
            {str},
            {
                __index = {

                    setStr = function (self, str)
                        self.str = str
                    end,

                    getStr = function (self)
                        return self.str
                    end,

                    upper = function(self)
                        return string.upper(self.str)
                    end,

                    lower = function(self)
                        return string.lower(self.str)
                    end,

                    len = function(self)
                        return string.len(self.str)
                    end
                },

                __tostring = function(self)
                    return self.str
                end
            }
        )

        class_string.str = str or ''

        return class_string
    end

    String.clone = function (class_string)
        return nil
    end

return String
