return {
  "Pocco81/auto-save.nvim",
  event = { "InsertLeave", "TextChanged" },
  opts = {
    enabled = true,
    execution_message = {
      message = function()
        return "Auto-saved at " .. vim.fn.strftime("%H:%M:%S")
      end,
      dim = 0.5,
      cleaning_interval = 2500,
    },
    trigger_events = { "InsertLeave", "TextChanged" },
    condition = function(buf)
      local fn = vim.fn
      if fn.getbufvar(buf, "&modifiable") == 1 and fn.getbufvar(buf, "&readonly") == 0 then
        return true
      end
      return false
    end,
    debounce_delay = 1000,
    write_all_buffers = false,
  },
}
