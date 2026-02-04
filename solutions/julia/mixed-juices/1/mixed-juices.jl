function time_to_mix_juice(juice)
    if juice == "Pure Strawberry Joy"
        0.5
    elseif juice == "Energizer" || juice == "Green Garden"
        1.5
    elseif juice == "Tropical Island"
        3.0
    elseif juice == "All or Nothing"
        5.0
    else
        2.5
    end
end


function limes_to_cut(needed, limes)
    wedges = 0
    count = 0

    for lime in limes
        if wedges >= needed
            break
        end

        if lime == "small"
            wedges += 6
        elseif lime == "medium"
            wedges += 8
        elseif lime == "large"
            wedges += 10
        end

        count += 1
    end

    return count
end


function order_times(orders)
    times = Float64[]

    for order in orders
        push!(times, time_to_mix_juice(order))
    end

    return times
end


function remaining_orders(time_left, orders)
    remaining = copy(orders)

    while !isempty(remaining)
        t = time_to_mix_juice(remaining[1])

        if time_left < t
            break
        end

        time_left -= t
        popfirst!(remaining)
    end

    return remaining
end

