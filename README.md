# Haskell Ambiguous Type Inference Example

This repository demonstrates a common issue in Haskell: ambiguous type inference with overlapping instances. The `Foo` type class has instances defined for both `Bar` and `Int`. The problem arises when calling the `foo` function with a value that could potentially match either instance.  The compiler might choose an instance unexpectedly, leading to incorrect results.

## How to reproduce the bug

1. Clone this repository.
2. Compile and run `bug.hs` using a Haskell compiler (like GHC). Observe that the output is correct for `Bar` and `Int` inputs.
3. Modify the code, adding more complicated instances that overlap and observe the ambiguity errors.

## Solution

The solution involves making your instances more specific (using functional dependencies or more constrained type classes) or explicitly specifying the type to avoid ambiguity.

See `bugSolution.hs` for an improved version.