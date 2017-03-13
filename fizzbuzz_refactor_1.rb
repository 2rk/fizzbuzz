my_range_of_numbers = 1..100

my_range_of_numbers.each do |the_number|

  is_divisible_by_3 = the_number % 3 == 0
  is_disible_by_5 = the_number % 5 == 0

  case
    when is_divisible_by_3 && is_disible_by_5
      puts 'fizzbuzz'
    when is_divisible_by_3
      puts 'fizz'
    when is_disible_by_5
      puts 'buzz'
    else
      puts the_number
  end
end
