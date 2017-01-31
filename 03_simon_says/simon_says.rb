def echo(msg)
 return msg
end

def shout(msg)
  return msg.upcase
end

def repeat(msg, n=2)
  return [msg] * n * ' '
end  

def start_of_word(text, n)
  text [0, n]
end

def first_word(text)
  array = text.split(" ")
  array [0]
end

def titleize(text)
  little_words = ["a", "the", "but", "and", "or", "an", "at", "as", "by", "for", "in", "of", "on", "over", "to", "up", "it", "or"]
  array = text.split (" ")
  array.each do |word| little_words.include?(word) ? word : word.capitalize!
  end 
  array[0] = array[0].capitalize
  array.join(" ")
end



