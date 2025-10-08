# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    # creates fibonacci pattern

    # for 0 or 1 the answer is itself
    if n < 2
        return n
    end

    # initializes result array for n 1..2
    result = [1,2]
    
    # builds out array for 3+
    for i in 2...n do
        result << (result[i-1]+result[i-2])
    end

    # reduce index by 1 because of zero-indexed array
    result[n-1]
end