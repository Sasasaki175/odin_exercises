def substrings(word, array)
  hash = Hash.new
  
  array.each do |search_word|
    if word.downcase.include?(search_word.downcase) then
      hash[search_word] = word.downcase.scan(search_word.downcase).length
    end
  end

  p hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)