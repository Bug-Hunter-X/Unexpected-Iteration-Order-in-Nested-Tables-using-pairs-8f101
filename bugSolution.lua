local function foo(t, order)
  if not order then order = {}
  end
  for k, v in pairs(t) do
    if type(v) == "table" then
      foo(v, order)
    end
    table.insert(order, {k, v})
  end
  return order
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
local ordered = foo(t)
for i, v in ipairs(ordered) do
  print(v[1], v[2])
end