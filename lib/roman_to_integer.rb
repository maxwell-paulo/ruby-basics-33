ROMAN_NUMBERS = {
  "I" => 1,
  "L" => 50,
  "V" => 5,
  "X" => 10,
  "C" => 100,
  "D" => 500,
  "M" => 1000
}

def roman_to_integer(roman_string)
  integer = 0
  integers_array = []
  # TODO: translate roman string to integer
  ROMAN_NUMBERS.each do |key, value|
    if roman_string.length == 1 && roman_string == key
      return integer = value
    end

    roman_array = roman_string.split("")
    roman_array.each_with_index do |c, i|
      if c == key
        integers_array[i] = value
      end
    end
    end



  i = 0
  while i < integers_array.length - 1

    if integers_array[i] < integers_array[i + 1]

      integer += integers_array[i + 1] - integers_array[i]
    end
    if i == 0 and integers_array[i] >= integers_array[i + 1]

      integer += integers_array[i]
    end
    if i > 0 && integers_array[i] >= integers_array[i + 1] && integers_array[i] <= integers_array[i - 1]

      integer += integers_array[i]
    end
    i += 1
  end

  if integers_array[integers_array.length - 1] <= integers_array[integers_array.length - 2]
    integer += integers_array[i]
  end


   integer
end

p roman_to_integer("XII")
