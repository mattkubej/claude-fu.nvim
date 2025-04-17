# claude-fu.nvim

> Be water, my code

Flow like water between coding and AI assistance

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  'mattkubej/claude-fu.nvim',
  config = function()
    require('claude-fu').setup({
      -- optional custom configuration
    })
  end
}
```

```lua
require('claude-fu').setup({
  api = {
    api_key = "your_api_key_here", -- or set ANTHROPIC_API_KEY env variable
  }
})
```

## Usage

Default keybindings:

- `<leader>cc` - Toggle Claude chat window
- `<leader>cb` - Ask about current buffer
- `<leader>cs` - Ask about selected code (visual mode)
- `<leader>ci` - Improve selected code (visual mode)
- `<leader>ce` - Explain selected code (visual mode)
- `<leader>cp` - Implement code from comments (visual mode)
- `<leader>cn` - Analyze selected code (visual mode)

## Configuration

The plugin is highly customizable. Here's an example with default values:

```lua
require('claude-fu').setup({
  api = {
    -- use Claude API directly
    model = "claude-3-7-sonnet-20250219",
    api_key_env = "ANTHROPIC_API_KEY", -- Environment variable for direct API key

    -- use proxy
    proxy_enabled = os.getenv("LLM_PROXY") ~= nil,
    proxy_url_env = "LLM_PROXY",                 -- Environment variable for proxy URL
    proxy_model = "anthropic:claude-3-7-sonnet", -- Model name when using proxy
    proxy_api_key_env = "OPENAI_API_KEY",        -- API key env var for proxy
  },
  
  ui = {
    width = 0.7,             -- Width as a percentage of screen width
    height = 0.6,            -- Height as a percentage of screen height
    border = "rounded",      -- Border style: "none", "single", "double", "rounded", "solid"
    title = " Claude Fu ",   -- Title shown in the popup window border
  },

  keymaps = {
    toggle = "<leader>cc",
    ask_buffer = "<leader>cb",
    ask_selection = "<leader>cs",
    improve_selection = "<leader>ci", 
    explain_selection = "<leader>ce",
    implement_comment = "<leader>cp",
    analyze_selection = "<leader>cn",
  },
})
```
