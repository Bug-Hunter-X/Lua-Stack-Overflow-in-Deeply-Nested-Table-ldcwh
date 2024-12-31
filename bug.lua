local function foo(t)
  for k, v in pairs(t) do
    if type(v) == "table" then
      foo(v)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)

--This code will cause a stack overflow error if the table t is deeply nested.  The recursive call to foo does not have a base case to stop the recursion.  To fix this, add a check to see if the table is already being processed, preventing infinite recursion.