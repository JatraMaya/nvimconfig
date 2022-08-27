local status_ok, tree = pcall(require, "nvim-tree")

if not status_ok then
	return
end

tree.setup({
	sort_by = "case_sensitive",
	view = {
		adaptive_size = false,
	},
	renderer = {
		group_empty = false,
		full_name = false,
	},
	filters = {
		dotfiles = true,
	},
	actions = {
		open_file = {
			quit_on_open = true,
		},
		remove_file = {
			close_window = true,
		},
	},
})
