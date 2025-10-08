# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    # Had to research different methods: Binary search, Newton, Bitwise and lookup tables
    # Binary search seemed the most appropriate

    # Define search bounds 0 to x
    low = 0
    high = x
    ans = 0

    # search while range is valid
    while low <= high do
        # midpoint of current range
        # avoids integer overflow
        mid = low + (high - low) / 2

        # square midpoint
        mid_sq = mid * mid

        # x is perfect square so return mid
        if mid_sq == x
            return mid

        # if mid^2 < x, mid is too small
        # save mid as best guess and move lower bound up
        elsif mid_sq < x
            ans = mid
            low = mid + 1

        # if mid^2 > x, mid is too large
        # move the upper bound down
        else # mid_sq > x
            high = mid -1
        end
    end

    # ans holds the largest mid that when squared is <= x
    ans
end