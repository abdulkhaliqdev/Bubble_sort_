arr1 = [7,6,5,4,3,2,1]
arr2 = ["hi", "hey", "hello"]

def bubble_sort(data)
  size = data.length
  if size <= 1
    return data
  end

  index = 0
  flag = true 
  while index < size && flag == true do 
    flag = false
    j = 0
    while j < size-1 do
      if data[j] > data[j+1] 
        data[j],data[j+1]=data[j+1],data[j]
        flag=true
      end
      j += 1
    end

    index += 1
  end
  data
end

p bubble_sort(arr1)

def bubble_sort_by(data)
  puts "uses the yield method to return the sorted array"
end

p bubble_sort_by(arr2) do |left,right|
  left.length - right.length
end
