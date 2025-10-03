# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    count = 0
    base = strs.shift
    base.chars.each_with_index do |s,i|
        if strs.all? { |string| string[i] == base[i] }
            count += 1
        else
            return base[0...count]
        end
    end
    base[0...count]
end