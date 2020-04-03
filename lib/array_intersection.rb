def intersection(list1, list2)

  intersection = {}

  match = []

  list1.each do |num|
    if intersection[num]
      intersection[num] += 1
    else
      intersection[num] = 1
    end
  end

  list2.each do |num|
    if intersection[num]
      match << num
    end
  end

  p match

end

# intersection([2, 3, 4], [4, 5, 6])