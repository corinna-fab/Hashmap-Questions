
def permutations?(string1, string2)

  return false if string1.length != string2.length

  sort = {}

  string1.split("").each do |char|
    if sort[char]
      sort[char] += 1
    else
      sort[char] = 1
    end
  end

  string2.split("").each do |char|
    return false if !sort[char]

    if sort[char]
      sort[char] -= 1
    else
      return false
    end
  end

  return true

end
