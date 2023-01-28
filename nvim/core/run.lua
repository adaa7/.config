local CodeRunner
if vim.fn.has "nvim-0.7" then
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
      vim.schedule(CodeRunner)
    end,
  })
else
  vim.cmd "autocmd FileType * lua CodeRunner()"
end

CodeRunner = function()
vim.api.nvim_create_autocmd("FileType", {
        pattern = "c",
        callback = function()
            -- -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG
            vim.api.nvim_buf_set_keymap(
                0,
                "n",
                "<F7>",
                "<ESC>:w<CR>:split<CR>:te gcc -std=c11 -Wshadow -Wall -o %:t:r.out % -g  && time ./%:t:r.out<CR>i",
                { silent = true}
            )
        end,
    })
end

