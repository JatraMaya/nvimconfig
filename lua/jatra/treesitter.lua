local status_ok, configs = pcall(require, "nvim-treesitter.config")

if not status_ok then
    return
end

configs.setup{
    ensure_installed = {"python"}, -- to list all the parser needed
    sync_install = false, -- Install parsers synchronously for the list in ensure_installed
    auto_install = true, -- Auto install missing parser when entering new buffer
    ignore_install = {""}, -- To ignore a specific parser
    highlight = {
        enable = true, -- if set to false, will disable the whole extension
        disable = {""}, -- list of parser to disable the highlight

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    }
}
