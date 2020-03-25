def intersection(list1, list2)

  intersection = []

  list1.each do |num|
    intersection << num if list2.include?(num) == true
  end
  return intersection
end

intersection([2, 3, 4], [4, 5, 6])