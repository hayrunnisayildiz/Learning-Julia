function collatz_steps(n::Int)
    n ≤ 0 && throw(DomainError(n, "n must be a positive integer"))
    steps = 0
    while n != 1
        n = iseven(n) ? n ÷ 2 : 3n + 1
        steps += 1
    end
    steps 

end
