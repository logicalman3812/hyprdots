return {
  'NitroSniper/autowrite.nvim',
  tag = '0.1.0', --locked to current release
  opts = {
    -- Default Options

    -- creates :ToggleAutowrite, :EnableAutowrite, :DisableAutowrite command
    create_commands = true,
    -- log any info notifications to the user
    verbose_info = false,
    -- HACK Option: Fix Undo bug that happens on lazy, this is false by default
    undo_hack = true,
  },
}
