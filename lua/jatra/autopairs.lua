local status_ok, autop = pcall(require, "nvim-autopairs")

if not status_ok then
    return
end

autop.setup {}
