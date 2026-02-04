function sortquantity!(qty)
    perm = sortperm(qty; rev=true)  
    sort!(qty; rev=true)          
    perm
end

function sortcustomer(cust, srtperm)
    cust[srtperm]
end

function production_schedule!(cust, qty)
    perm = sortperm(qty; rev=true)   
    sort!(qty; rev=true)             
    orderedcust = cust[perm]         
    inv = invperm(perm)              
    orderedcust, inv
end
