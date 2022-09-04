local M = {
  is_one_session = false,
  one_session_file = vim.fn.stdpath('data') .. '/one-session.vim',
}

function M.load()
  if vim.fn.argc() > 0 or vim.g.started_with_stdin then
    return
  end

  if vim.fn.filereadable(M.one_session_file) == 1 then
    package.loaded['treesitter'] = nil
    vim.schedule(function() vim.api.nvim_command('source ' .. M.one_session_file) end)
    -- vim.notify("one-session loaded", vim.log.levels.INFO, {})
  else
    -- vim.notify("no one-session found", vim.log.levels.INFO, {})
  end

  M.is_one_session = true
end

function M.save()
  if M.is_one_session == false then
    return
  end

  vim.cmd('mksession! ' .. M.one_session_file)
end

return M
