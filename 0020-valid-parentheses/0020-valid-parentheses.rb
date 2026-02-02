# @param {String} s
# @return {Boolean}
def is_valid(s)
    stack = []
    pairs = {
        ')' => '(',
        ']' => '[',
        '}' => '{'
    }
    s.chars.each do |char|
        if pairs.value? char
            stack << char
        elsif stack.last == pairs[char]
            stack.pop
        else
            return false
        end
    end
    stack.empty?

end