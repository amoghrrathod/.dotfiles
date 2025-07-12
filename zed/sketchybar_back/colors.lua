return {
	black = 0xff1c1c1e, -- Slightly darker black for a cleaner, muted look
	white = 0xffd9d9da, -- Softer white to reduce contrast
	red = 0xfffc4b6a, -- Subtle red for a more muted accent
	green = 0xff88c057, -- Softer green to reduce vibrancy
	blue = 0xff5fbce9, -- Cooler blue that feels modern
	yellow = 0xffe6b854, -- Subdued yellow for a calmer feel
	orange = 0xfff2874b, -- Less intense orange for a smoother look
	magenta = 0xffa58beb, -- Subtle magenta, more neutral
	grey = 0xff6b6e75, -- Slightly darker grey for better contrast
	transparent = 0x00000000, -- Fully transparent

	bar = {
		bg = 0x00000000, -- Fully transparent background
		border = 0xff222225, -- Dark border for contrast
	},
	popup = {
		bg = 0x00000000, -- Fully transparent popup background
		border = 0xff6b6e75, -- Grey border for soft edges
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
