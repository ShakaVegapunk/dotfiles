return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "leoluz/nvim-dap-go",
        "rcarriga/nvim-dap-ui",
    },
    config = function()
        require("dapui").setup()
        require("dap-go").setup()

        local dap, dapui = require("dap"), require("dapui")

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        vim.keymap.set("n", "<Leader>dt", ":DapToggleBreakpoint<CR>")
        vim.keymap.set("n", "<Leader>dc", ":DapContinue<CR>")
        vim.keymap.set("n", "<Leader>dx", ":DapTerminate<CR>")
        vim.keymap.set("n", "<Leader>do", ":DapStepOver<CR>")
        vim.keymap.set("n", "<Leader>di", ":DapStepInto<CR>")
        vim.keymap.set("n", "<Leader>dq", ":DapStepOut<CR>")
        vim.keymap.set("n", "<Leader>dr", ":DapRestartFrame<CR>")
        vim.keymap.set("n", "<Leader>ds", ":DapSetLogLevel<CR>")
        vim.keymap.set("n", "<Leader>dl", ":DapShowLog<CR>")
        vim.keymap.set("n", "<Leader>db", ":DapToggleRepl<CR>")
    end,
}
