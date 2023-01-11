package = "lua-lab"
version = "scm-1"
source = {
   url = "git+https://github.com/alissonalbuquerque/lua-lab.git"
}
description = {
   homepage = "https://github.com/alissonalbuquerque/lua-lab",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["utils.system.numeric.Binary"] = "src/utils/system/numeric/Binary.lua",
      ["utils.system.numeric.Hexadecimal"] = "src/utils/system/numeric/Hexadecimal.lua",
      ["utils.system.numeric.Octal"] = "src/utils/system/numeric/Octal.lua",
      ["utils.wrappers.Boolean"] = "src/utils/wrappers/Boolean.lua",
      ["utils.wrappers.Number"] = "src/utils/wrappers/Number.lua",
      ["utils.wrappers.String"] = "src/utils/wrappers/String.lua"
   }
}
