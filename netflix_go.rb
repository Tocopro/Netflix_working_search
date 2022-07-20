
count = 0
show = ''
netflix = ''
date_time = ''

puts 'Enter Movie'
movie = gets.to_s
movie_compare = movie.strip.delete(' ')




data_file = File.open('C:\\Users\\NEAK\\Downloads\\netflix.txt', 'r')
file_text = data_file.readlines
file_size = file_text.length

while count < file_size

  current_show = file_text[count]
  current_show = current_show.delete(' ')

  current_show.to_s.each_char{ |x| 
  netflix += x
  show += x
  if x == "\t"
    show = ''
  end
  show =  show.strip

}

  if show == movie_compare
    period = file_text[count]
    period.to_s.each_char { |x|
  date_time += x
   if x == "\t"
     break
   end
}
    puts "Yes  you have already watched #{movie} on #{date_time}"
    break
  end
  count += 1
end


data_file.close
