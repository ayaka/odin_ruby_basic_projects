
def substrings (text, words)
    match = Hash.new(0)
    
    text.split.each do |t|
        words.each do |word|
            match[word] += 1 if t.downcase.include?(word.downcase)
        end
    end
    puts match
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)

# when a text (word or sentence) is given with collection of words
# it looks if a given text contains any of words in the collection 
# case insensitive
# it returns every word that matches and number of how many times it matches