# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    # negative sign always fails palindrome
    return false if x < 0

    # digits converts int to array, compare to reverse
    x.digits == x.digits.reverse
end