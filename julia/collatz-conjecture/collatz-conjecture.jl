function collatz_steps(n)
    n ≤ 0 && throw(DomainError(n, "Invalid value"))
    n == 1 ? 0 : isodd(n) ? 1 + collatz_steps(3n + 1) : 1 + collatz_steps(n ÷ 2)
end