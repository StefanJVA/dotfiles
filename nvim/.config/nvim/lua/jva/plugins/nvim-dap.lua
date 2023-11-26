return {
	{
		"mfussenegger/nvim-dap",
  -- stylua: ignore
  keys = {
    { "<F9>", function() require('dap').toggle_breakpoint() end, desc = "Toggle breakpoint"},
    { "<F5>", function() require('dap').continue() end, desc = "dap continue"},
    { "<F7>", function() require('dap').step_into() end, desc = "dap step into"},
    { "<F8>", function() require('dap').step_over() end, desc = "dap step over"},
  },
		dependencies = {
			"mfussenegger/nvim-dap-python",
  -- stylua: ignore
    keys = {
      { "<F10>", function() require('dap-python').test_method() end, desc = "Debug Method", ft = "python" },
      { "<F11>", function() require('dap-python').test_class() end, desc = "Debug Class", ft = "python" },
    },
			config = function()
				local dap, dap_python = require("dap"), require("dap-python")
				local path = require("mason-registry").get_package("debugpy"):get_install_path()

				dap_python.setup(path .. "/venv/bin/python")

				dap.configurations.python = dap.configurations.python or {}
				local default_python_debug_config = {
					type = "python",
					request = "launch",
					name = "Debug",
					justMyCode = false,
					program = "${file}",
				}
				table.insert(dap.configurations.python, 1, default_python_debug_config)
			end,
		},
	},
	{
		"rcarriga/nvim-dap-ui",
		config = function()
			local dap, dapui = require("dap"), require("dapui")
			dapui.setup()
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end
		end,
	},
}
