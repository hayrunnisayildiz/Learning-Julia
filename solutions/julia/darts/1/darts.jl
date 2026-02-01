function score(x, y)
    d2 = x^2 + y^2
    if d2 <= 1^2
        10
    elseif d2 <= 5^2
        5
    elseif d2 <= 10^2
        1
    else
        0
    end
end
