return {
	black = 0xff0f0f0f, -- Deep black for strong contrast
	white = 0xfff5f5f5, -- Crisp white to stand out against bright backgrounds
	red = 0xffe63946, -- Vibrant red for clear accents
	green = 0xff2a9d8f, -- Bold green for visibility
	blue = 0xff0077b6, -- Strong blue to remain distinct
	yellow = 0xfff4a261, -- Bright yellow for emphasis
	orange = 0xffe76f51, -- Vivid orange for clear highlights
	magenta = 0xff9b5de5, -- Bright magenta for energetic contrast
	grey = 0xff495057, -- Darker grey for better readability
	transparent = 0x00000000, -- Fully transparent

	bar = {
		bg = 0x00000000, -- Fully transparent background
		border = 0xff343a40, -- Dark border for distinct separation
	},
	popup = {
		bg = 0x00000000, -- Fully transparent popup background
		border = 0xff495057, -- Dark grey border for clear delineation
	},
	bg1 = 0x00000000, -- Fully transparent base background layer
	bg2 = 0x00000000, -- Fully transparent lighter layer for depth

	with_alpha = function(color, alpha)
		if alpha > 1.0 or alpha < 0.0 then
			return color
		end
		return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
	end,
}
