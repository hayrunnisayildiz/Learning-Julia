function sortquantity!(qty)
    p = sortperm(qty; rev=true)
    permute!(qty, p)
    p
end

function sortcustomer(cust, srtperm)
    cust[srtperm]
end

function production_schedule!(cust, qty)
    p = sortquantity!(qty)
    orderedcust = cust[p]
    orderedcust, invperm(p)
end
