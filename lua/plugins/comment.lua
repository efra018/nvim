-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
return {
	"numToStr/Comment.nvim",
	opts = {
		-- add any options here
	},
	lazy = false,

	--MAPPINGS COMMENT IN NORMAL MODE
	--`gcc` - Cambia la línea actual usando el comentario lineal
	--`gbc` - Cambia la línea actual usando el comentario en el sentido de las agujas del reloj
	--`[count]gcc` - Alterna el número de línea dado como prefijo-count usando lineewise
	--`[count]gbc` - Alterna el número de línea dado como prefijo-cuenta usando el sentido de las agujas del reloj
	--gc[count]{motion}` - (Op-pending) Alterna la región usando el comentario lineal
	--gb[count]{motion}` - (Op-pending) Conmuta la región usando comentarios en el sentido de las agujas del reloj

	-- COMMENT IN VISUAL MODE
	-- `gc` - Toggles the region using linewise comment
	-- `gb` - Toggles the region using blockwise comment
}
