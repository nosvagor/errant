local lush = require("lush")
local base = require("errant.base")
local plugins = require("errant.plugins.highlights")
local languages = require("errant.languages")

local specs = { base, languages, plugins }
local spec = lush.merge(specs)

-- checking if user has lightline and adding support
require("errant.plugins.lightline").init(spec)

return spec
