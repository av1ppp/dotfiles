local wk = require("which-key")

wk.register({
	f = {
		name = "Find",
		f = { "Find file" },
		b = { "Find buffer" },
		h = { "Find help" },
		w = { "Find text" },
	},
	e = { "File manager" },
	o = { "Git status" },
	g = {
		name = "Git",
		b = "Show branches",
		c = "Show commits",
		s = "Show status",
	},
	l = {
		name = "LSP",
		d = "Diagnostic",
		D = "Hover diagnostic",
		f = "Format",
		r = "Rename",
		a = "Action",
		s = "Symbol",
	},
}, { prefix = "<leader>" })
