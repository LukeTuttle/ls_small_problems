def string_to_signed_integer(str)
  str_chars = str.chars
  if str_chars.first == '-'
    make_negative = !!(str_chars.shift)
  elsif str_chars.first == '+'
    str_chars.shift
  end
  int_lookup = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }
  power_ten = 1
  out_num = 0

  str_chars.reverse.each do |num|
    num_int = int_lookup[num]
    out_num += num_int * power_ten
    power_ten *= 10
  end
  make_negative ? (out_num * -1) : out_num
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100