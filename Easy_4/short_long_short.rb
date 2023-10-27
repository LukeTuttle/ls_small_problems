def short_long_short(str1, str2)
  shorter, longer = [str1, str2].sort_by {|string| string.size}
  shorter + longer + shorter
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')
p short_long_short('', 'xyz') 