require("vim-options")
require("config.lazy")

vim.filetype.add({
  extension = {
    j2 = "jinja",
  },
  pattern = {
    [".*%.html%.j2"] = "htmldjango",
    [".*%.yaml%.j2"] = "yaml",
    [".*%.ts%.j2"] = "typescript",
    [".*%.go%.j2"] = "go",
  }
})

package.path = package.path .. ";/Users/aidansardie/.luarocks/path/share/lua/5.1/?.lua"
package.cpath = package.cpath .. ";/Users/aidansardie/.luarocks/path/lib/lua/5.1/?.so"

