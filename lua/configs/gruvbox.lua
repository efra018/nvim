local status, gruvbox = pcall(require, "gruvbox")
if not status then
    return
end

gruvbox.setup({
    italic = {
        strings = false,
        comments = false,
        operators = false,
        folds = false
    }
    
})

--require("gruvbox").setup({
--    italic = {
--        strings = false,
--        comments = false,
--        operators = false,
--        folds = false
--    }
--})
