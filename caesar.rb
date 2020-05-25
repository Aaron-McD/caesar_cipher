def caesar_cipher(string_in, shift)
    if(shift > 0)
        shift %= 26
    else
        while(shift < 0)
            shift += 26
        end
    end
    string_array = string_in.split('')
    string_out = string_array.map do |c|
        code = c.ord
        if(code >= 97 && code <= 122)
            code += shift
            if(code >= 97 && code <= 122)
                c = code.chr
            else
                c = (code - 26).chr
            end
        elsif(code >= 65 && code <= 90)
            code += shift
            if(code >= 65 && code <= 90)
                c = code.chr
            else
                c = (code - 26).chr
            end
        else
            c = c
        end
    end
    return string_out.join('')
end

puts caesar_cipher('What a string!', 5)
puts caesar_cipher('What a string!', -21)