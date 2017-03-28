
# # Book Titles
#
# # Topics
#
# * classes and objects
# * instance variables
# * setter methods
# * strings
#
# # Notes
#
# Book Titles in English obey some strange capitalization rules. For example, "and" is lowercase in "War and Peace". This test attempts to make sense of some of those rules.


class Book
  
  attr_reader :title  #describe an attribute reader method to return the instance variable

  def title=(text)  #describe an attribute writer method to generate the instance variable
  
  exceptions = ["the", "a", "an", "in", "on", "at", "and", "but", "for", "nor", "or", "so", "of", "yet"]
  words = text.split(" ") #create array of individual words from the text of the book title 

    words.each do |word|  #for each individual word in the array
  
      if exceptions.include?(word) #check whether word is in the list of exceptions
      word.downcase! #if it is make sure it's all lowercase
      else
      word.capitalize!  #if it isn't then capitalize the first letter
      end
    
    end
    words[0].capitalize!  #capitalise the first word in the array
    @title = words.join(" ")  #join the array to create the book title
    end

end

