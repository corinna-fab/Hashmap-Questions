#Time complexity: O(n)
#Space complexity: O(n)

def palindrome_permutation?(string)

  return true if string == ""

  counts = {}
  not_palindrome = 0

  string.split("").each do |char|
    counts[char] ? counts[char] += 1 : counts[char] = 1
  end

  counts.each do |key, value|
    counts[key].even? ? next : not_palindrome += 1
  end

  return not_palindrome <= 1

end


