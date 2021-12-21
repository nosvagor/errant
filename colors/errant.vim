" reloading all errant highlights
lua package.loaded["errant"] = nil
lua package.loaded["errant.base"] = nil
lua package.loaded["errant.plugins.highlights"] = nil
lua package.loaded["errant.languages"] = nil
lua require("lush")(require("errant"))
