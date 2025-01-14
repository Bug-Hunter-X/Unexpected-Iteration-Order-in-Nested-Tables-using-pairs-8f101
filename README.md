# Lua Nested Table Iteration Order

This example demonstrates a common error when iterating over nested tables in Lua using the `pairs` function.  The `pairs` iterator does not guarantee any specific order, which can lead to unexpected behavior if your code relies on a particular iteration order.

The provided `bug.lua` file shows the problematic code, and `bugSolution.lua` offers a solution that uses a custom iterative approach to ensure consistent, depth-first traversal.