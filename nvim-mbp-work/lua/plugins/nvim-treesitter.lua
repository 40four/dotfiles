require'nvim-treesitter.configs'.setup{
	ensure_installed = { 'lua', 'php', 'typescript', 'javascript', 'bash', 
		'blade', 'css', 'csv', 'html', 'json', 'markdown', 'markdown_inline', 
		'python', 'scss', 'sql', 'tsx', 'tmux', 'vim', 'vimdoc', 'vue', 'toml',
		'astro'
	}, 
	highlight = { enable = true }
}
