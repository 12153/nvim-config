return {
  {
    "nvim-neotest/nvim-nio",
    lazy = true, -- Loads only when required
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",            -- UI for nvim-dap
      "theHamsta/nvim-dap-virtual-text", -- Inline debug text
      "leoluz/nvim-dap-go",              -- Go debug adapter
      "simrat39/rust-tools.nvim",
      "nvim-telescope/telescope-dap.nvim",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

       -- Load VSCode-style launch.json
      require("dap.ext.vscode").load_launchjs()

      -- Setup DAP UI
      dapui.setup()

      -- Auto-open DAP UI
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end

      -- Load DAP Virtual Text
      require("nvim-dap-virtual-text").setup()

      -- 🔹 Go Debugging
      require("dap-go").setup()

      -- 🔹 Rust Debugging
      require("rust-tools").setup({
        dap = {
          adapter = require("rust-tools.dap").get_codelldb_adapter(
            "~/.local/share/nvim/mason/bin/codelldb", -- Adjust path if needed
            "~/.local/share/nvim/mason/bin/lldb"
          ),
        },
      })

      -- 🔹 Debugging Keybindings
      vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Start/Continue Debugging" })
      vim.keymap.set("n", "<leader>ds", dap.step_over, { desc = "Step Over" })
      vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Step Into" })
      vim.keymap.set("n", "<leader>do", dap.step_out, { desc = "Step Out" })
      vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
      vim.keymap.set("n", "<Leader>B", function()
        dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
      end, { desc = "Set Conditional Breakpoint" })
    end
  }
}
