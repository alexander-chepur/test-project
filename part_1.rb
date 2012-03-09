def palindrome?(string)
  string.to_s.downcase!
  string.to_s.gsub!(/\W/, "")
  return (string.to_s.reverse == string)
end

#palindrome?("A man, a plan, a canal -- Panama")  #=> true
#palindrome?("Madam, I'm Adam!")  # => true
#palindrome?("Abracadabra")  # => false (nil is also ok)

def count_words(string)
  string.to_s.downcase!
  arr =  string.to_s.split(/\b/).select{|i| i =~ /\w/}
  h = Hash.new
  arr.uniq.each{|i| h[i] = arr.count(i)}
  return h
end

#count_words("A man, a plan, a canal -- Panama")
# => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
#count_words "Doo bee doo bee doo"  # => {'doo' => 3, 'bee' => 2}