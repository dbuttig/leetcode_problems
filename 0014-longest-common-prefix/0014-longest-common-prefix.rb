# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    base = strs.shift
    base.chars.each_with_index do |s,i|
        unless strs.all? { |string| string[i] == s }
            return base[0...i]
        end
    end
    base
end