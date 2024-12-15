return {
	"robitx/gp.nvim",
	config = function()
		local config = {
			openai_api_key = os.getenv("OPENAI_API_KEY"),
			providers = {
				openai = {
					disable = false,
					endpoint = "https://api.openai.com/v1/chat/completions",
				},
			},
			agents = {
				{
					provider = "openai",
					name = "ChatGPT3-5",
					chat = true,
					command = false,
					model = { model = "gpt-3.5-turbo", temperature = 1.1, top_p = 1 },
					system_prompt = "You are a helpful assistant.",
				},
				{
					provider = "openai",
					name = "ChatGPT4o-mini",
					chat = true,
					command = false,
					model = { model = "gpt-4o-mini", temperature = 1.1, top_p = 1 },
					system_prompt = "You are a helpful assistant.",
				},
			},
		}

		require("gp").setup(config)

		local function keymapOptions(desc)
			return {
				noremap = true,
				silent = true,
				nowait = true,
				desc = "GPT prompt " .. desc,
			}
		end

		vim.keymap.set({ "n", "i" }, "<C-g>n", "<cmd>GpChatNew popup<cr>", keymapOptions("New Chat"))
		vim.keymap.set({ "n", "i" }, "<C-g>t", "<cmd>GpChatToggle<cr>", keymapOptions("Toggle Chat"))
		vim.keymap.set({ "n", "i" }, "<C-g>p", "<cmd>GpPopup<cr>", keymapOptions("Popup"))
		vim.keymap.set({ "n", "i" }, "<C-g>f", "<cmd>GpChatFinder<cr>", keymapOptions("Chat Finder"))

		vim.keymap.set("v", "<C-g>p", ":<C-u>'<,'>GpPopup<cr>", keymapOptions("Visual Popup"))
		vim.keymap.set("v", "<C-g>r", ":<C-u>'<,'>GpRewrite<cr>", keymapOptions("Visual Rewrite"))
		vim.keymap.set("v", "<C-g>i", ":<C-u>'<,'>GpImplement<cr>", keymapOptions("Implement selection"))

		vim.keymap.set("n", "<C-g>u", function()
			vim.fn.jobstart({ "open", "https://platform.openai.com/settings/organization/usage/activity" })
		end, keymapOptions("AI Usage"))
	end,
}
