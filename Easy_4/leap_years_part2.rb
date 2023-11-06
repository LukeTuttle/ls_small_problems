# problem: update the previous method such that the previous determination of a leap year only applies to years 
# prior to 1752. From 1752 onward, leaps years are any year that is divisible by 4. 

# inputs outputs: integer; boolean


# algorithm
# - if year is earlier than 1752, pass year into old method and return that return value
# - if year is 1752 or later, return whether it is evenly divisble by 4



def leap_year?(year)
  if year >= 1752
    return true if (year % 400).zero?
    return true if (year % 4).zero? && !(year % 100).zero?

    false
  else
    year % 4 == 0
  end 
end

 p leap_year?(2016) == true
 p leap_year?(2015) == false
 p leap_year?(2100) == false
 p leap_year?(2400) == true
 p leap_year?(240000) == true
 p leap_year?(240001) == false
 p leap_year?(2000) == true
 p leap_year?(1900) == false
 p leap_year?(1752) == true
 p leap_year?(1700) == true
 p leap_year?(1) == false
 p leap_year?(100) == true
 p leap_year?(400) == true