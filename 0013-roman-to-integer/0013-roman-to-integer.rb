# @param {String} s
# @return {Integer}
def roman_to_int(s)
        roman_hash = {
        'M' => 1000,
        'CM' => 900,
        'D' => 500,
        'CD' => 400,
        'C' => 100,
        'XC' => 90,
        'L' => 50,
        'XL' => 40,
        'X' => 10,
        'IX' => 9,
        'V' => 5,
        'IV' => 4,
        'I' => 1
    }

    sum = 0

    roman_hash.each do |key, value|
        while s.start_with? key do
            sum += value
            s.delete_prefix! key
        end
    end
    sum
    
end