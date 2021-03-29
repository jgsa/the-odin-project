# Implement a caesar cipher that takes in a string and the
# shift factor and then outputs the modified string

# From: https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/caesar-cipher

def caesar_cipher(text, shift)
    upper = ('A'..'Z').to_a
    lower = ('a'..'z').to_a
    shifted = text.split('').map do |character|
        case character
        when /[[:upper:]]/ then 
            (upper.rotate(shift))[upper.index(character)]
        when /[[:lower:]]/ then 
            (lower.rotate(shift))[lower.index(character)]
        else character
        end
    end
    shifted.join
end

print "Enter a phrase: "
phrase = gets.chomp

print "Enter the shift value: "
shift = gets.chomp.to_i

puts caesar_cipher(phrase, shift)