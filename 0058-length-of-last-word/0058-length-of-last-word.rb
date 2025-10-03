# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    s.rstrip.split.last.length
end