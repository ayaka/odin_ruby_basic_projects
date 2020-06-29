def is_uppercase? (n)
    n >= 65 && n <= 90
end

def is_lowercase? (n)
    n >= 97 && n <= 122
end

def wrap_number (n, min)
    n < min ? n + 26 : n - 26
end

def caesar_cipher (text, shift)
    return unless text.is_a? String
    return unless shift.is_a? Integer
    shift >= 0 ? shift %= 26 : shift = -(shift.abs % 26)
    
    new_text = text.bytes.map do |n|
        if is_uppercase?(n)
            n += shift
            n = wrap_number(n, 65) unless is_uppercase?(n)
        
        elsif is_lowercase?(n)
            n += shift
            n = wrap_number(n, 97) unless is_lowercase?(n)
        end
        n
    end

    new_text.map { |n| n.chr }.join
end

# puts "Please enter a text to encode"
# original_text = gets.chomp
# puts "please enter a number to shift (negative number to shift left)"
# shift_number = gets.chomp.to_i

# caesar_cipher(original_text, shift_number)

# get input from user, the original text and shift index
# shift index can be any integer including negative
# if shift index is euqal or bigger than 26 / -26, wrap it to less than 26 / -26
# convert characters to ascii numbers
# if current character is not an alphabet, don't do anything
# convert an alphabetic character to a number
# shift the character
#   wrap z(Z) to a(A) or vice versa if negative shift index
# convert a number back to a character
# print out encrypted code 