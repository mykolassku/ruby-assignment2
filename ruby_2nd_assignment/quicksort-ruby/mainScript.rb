def quicksort(array, low, high)
  
   i = low
   j = high
   puts "array_low: #{array[i]}, array_high: #{array[j]}\n\n"
   pivot = array[(i + j) / 2]
   puts pivot
   temp = nil
   
  while i <= j
      while (array[i] < pivot)
         i += 1
      end
    
      while (array[j] > pivot)
           j -= 1
      end
     
      if i <= j
        temp = array[i]
        array[i] = array[j]
        array[j] = temp
        i+=1
        j-=1
      end
   end
   if j > low
     quicksort(array,low,j)
   end
   if i < high
     quicksort(array,i,high)
   end
     
end

line_string = ''
file=File.open('DataArray - 1000.txt').read
file.each_line do |line|
  line_string = line.split(' ')
end

int_array = line_string.map(&:to_i)

print int_array

quicksort(int_array, 0, int_array.size-1)

print "\n"
print int_array