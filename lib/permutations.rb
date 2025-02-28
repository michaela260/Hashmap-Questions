
def permutations?(string1, string2)
  hash = {}
  string1.each_char do |letter|
    if hash[letter] == nil
      hash[letter] = 1
    else
      hash[letter] += 1
    end
  end
  
  string2.each_char do |letter|
    if hash[letter] == nil
      return false
    else
      hash[letter] -= 1
    end
  end
  
  hash.values.each do |value|
    if value != 0
      return false
    end
  end
  
  return true
  
end
