# 4:06
=begin
input/output: integer; string
Mental model: 
The argument tells you where the point in time is between 0 and 1440.
If the argument is negative, then you need to count backwardd from 1440 
if its positive then count up from zero. Then divide by 60 to get the hour and 
  the remainder is the minutes. 


Algorithm:
- if the `num` is negative set starting point `start` as 1440
- if `num` is positive set `start` as 0
- add `num` to `start`
- get the quotient and remainder of dividing `start` by 60
- put the quotient and rmeainder into correct string format and return
=end


def time_of_day(num)
  start = num < 0 ? 1440:0
  start += num
  hours, mins = start.divmod(60)
  hours = hours % 24
  format('%02d:%02d', hours, mins)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"