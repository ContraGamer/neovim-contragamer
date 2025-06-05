local M = {}

function M.safe_require(name)
  local ok, module = pcall(require, name)
  if ok then
    return module
  end
  return nil
end

return M
