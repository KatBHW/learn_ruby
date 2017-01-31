#write your code here

def ftoc(temp_in_f)
  temp_in_f = temp_in_f.to_f
  temp_in_c = (temp_in_f - 32) * 5 / 9
  temp_in_c
end

def ctof(temp_in_c)
  temp_in_c = temp_in_c.to_f
  temp_in_f = temp_in_c * 9 / 5 + 32
  temp_in_f
end