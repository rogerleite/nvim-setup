--local colorscheme = "default"
--local colorscheme = "darkplus"

local colorscheme = "material"
vim.g.material_theme_style = "ocean"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
