def combine_anagrams(words)
  result = Array.new
  a = Array.new
  words.each{|w| a << w.downcase.scan(/./).sort.join}
  a.uniq.each{|acr| result << words.select{|w| acr == w.downcase.scan(/./).sort.join}}
  return result
end

# Tests
#input = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']
#print combine_anagrams(input)
#  => output:  [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams", "scream"]]
# HINT: you can quickly tell if two words are anagrams by sorting their
#  letters, keeping in mind that upper vs lowercase doesn't matter
