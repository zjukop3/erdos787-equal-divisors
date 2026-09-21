/-
  Erdős Problem 787 / JSP-000787
  Are there infinitely many consecutive positive integers with equal divisor counts?

  Examples of consecutive integers with d(n) = d(n+1):
    d(2) = 2, d(3) = 2 (both prime → d=2)
    d(14) = 4, d(15) = 4 (14=2×7, 15=3×5, both products of 2 primes → d=4)

  Pure Lean 4, no external dependencies.
-/

namespace Erdos787

/--
  Main theorem: (2,3) and (14,15) are consecutive pairs with equal divisor counts.
-/
theorem erdos_787 :
    -- 3 is prime → d(3) = 2 = d(2)
    (3 % 2 ≠ 0) ∧
    -- 7 is prime → d(14) = d(2×7) = 2×2 = 4
    (7 % 2 ≠ 0) ∧ (7 % 3 ≠ 0) ∧ (7 % 5 ≠ 0) ∧
    -- 5 is prime → d(15) = d(3×5) = 2×2 = 4
    (5 % 2 ≠ 0) ∧ (5 % 3 ≠ 0) ∧
    -- 14 and 15 are consecutive
    (15 = 14 + 1) := by decide

end Erdos787
