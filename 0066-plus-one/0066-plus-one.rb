# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    incremented = digits.join.to_i + 1
    incremented.to_s.chars.map(&:to_i)
end