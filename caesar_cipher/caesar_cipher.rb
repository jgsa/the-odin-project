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