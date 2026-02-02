function eggcount(number)
    count = 0
    n = number

    while n > 0
        n &= n - 1
        count += 1
    end

    return count

end
