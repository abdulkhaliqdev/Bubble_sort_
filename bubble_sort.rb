arr1 = [7, 6, 1, 5, 4, 3, 2, 1]
arr2 = %w['hi hello hey a']

def bubble_sort(data)
  size = data.length
  return data unless size > 1

  index = 0
  flag = true
  while index < size && flag == true
    flag = false
    j = 0
    while j < size - 1
      if data[j] > data[j + 1]
        data[j], data[j + 1] = data[j + 1], data[j]
        flag = true
      end
      j += 1
    end
    index += 1
  end
  data
end

def bubble_sort_by(data)
  size = data.length
  return data unless size > 1

  index = 0
  flag = true
  while index < size && flag == true
    flag = false
    j = 0
    while j < size - 1
      positives = yield data[j], data[j + 1]
      if positives.positive?
        data[j], data[j + 1] = data[j + 1], data[j]
        flag = true
      end
      j += 1
    end
    index += 1
  end
  data
end

p "Bubbel_sort = #{bubble_sort(arr1)}"
print 'Bubbel_sort_by = '
p bubble_sort_by(arr2) { |left, right| left.length - right.length}
p "Bubbel_sort_by = #{bubble_sort_by(arr1) { |left, right| left - right }}"
