# Implement a method #substrings that takes a word as the first argument
# and then an array of valid substrings (your dictionary) as the second argument.
# It should return a hash listing each substring (case insensitive) that was found 
# in the original string and how many times it was found.
# Make sure your method can handle multiple words.

# From: https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/sub-strings

def substrings(phrase, dictionary)
    dictionary.reduce(Hash.new(0)) do |map, word| 
        map[word] += phrase.upcase.scan(word.upcase).length if phrase.upcase.include?(word.upcase)
        map
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)