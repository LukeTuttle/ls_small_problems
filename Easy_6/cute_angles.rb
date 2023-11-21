=begin
2:15pm 
mental model: The integer value is the integer for the degrees. The decimal value, multiplied by 60 then divided by 100 
will give a decimal from which you can extract the minutes and seconds. The first to digits (10's and hundred's place) will give the 
minutes as a proportion (i.e. multiply decimal by 100 and divide by 60). To get the seconds, get the thousandths and tenthousands digits and
repeat the same proportion calculation you used to get the minutes. Then, you'll need to format all the integer values into teh correct output string format.  

create a helper method which takes an integer with 2 significant digits and returns that integers proportion to 100 but for 60.
get_proportion


Algorithm:
- create a hash with keys degrees, minutes, seconds call it angle
- set `working_num` to `num`
- for each key in angle 
  - take the divmod of num; set value of the key to quotient, and the remainder to `remainder`
  - set `num` to 100 * remainder and repeat step above on next iteration
- for the values of keys minuts and seconds, convert the values to a proportion over 60
- store the degrees as equal to the number provided rounded to the ones place (floor)
- convert the degrees, minutes, and seconds values to a properly formatted string
- return the formatted string


=end
DEGREE = "\xC2\xB0"
def dms(num)
  angle = { degrees: 0, minutes: 0, seconds: 0 }

  angle.each_key do |key|
    quotient, remainder = num.divmod(1)
    angle[key] = quotient
    num = remainder.round(4) * 60
  end

  sprintf(%(%<degrees>.1d#{DEGREE}%<minutes>.2d'%<seconds>.2d"), angle)
end

def get_proportion(int)
  (int * 60) / 100.0
end


# test cases

 p dms(30) == %(30°00'00")
 p dms(76.73) == %(76°43'48")
 p dms(254.6) == %(254°36'00")
 p dms(93.034773) == %(93°02'05")
 p dms(0) == %(0°00'00")
 p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")