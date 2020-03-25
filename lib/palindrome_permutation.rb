
def palindrome_permutation?(string)

  return true if string == ""

  hash = string.split("").each_with_object(Hash.new(0)) do |char, hash|
    hash[char] += 1
  end
  
  not_palindrome = 0

  hash.each do |key, value|
    if hash[key] != 2
      not_palindrome += 1
    end
  end

  return not_palindrome == 1

end


