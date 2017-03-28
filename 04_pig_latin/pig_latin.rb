# # Topics
#
# * modules
# * strings
#
# # Pig Latin
#
# Pig Latin is a made-up children's language that's intended to be confusing. It obeys a few simple rules (below) but when it's spoken quickly it's really difficult for non-children (and non-native speakers) to understand.
#
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
#
# (There are a few more rules for edge cases, and there are regional variants too, but that should be enough to understand the tests.)
#
# See <http://en.wikipedia.org/wiki/Pig_latin> for more details.
#
#


def translate(text)

vowels = ["a", "e", "i", "o", "u"] #create array of vowels
words = text.split(" ") #create array of individual words from text 
translation = [] #create empty array to receive the individually translated words

  words.each do |word|  #for each individual word in the array
      
    #create loop to continue while first letter is not a vowel.
    while vowels.include?(word[0].downcase) == false #check index 0 (first letter) in word is NOT a vowel
    
       if word[0..1] == "qu" #create exceptional case for 'qu'
         word = word [2..-1] + word[0..1] #splice the first two letters to the end of the word
       else
         word = word [1..-1] + word[0] #push the first letter in the word (index [0]) to the end of the array
       end  
        
    end
        
  word = word + "ay"
  translation.push(word) #push the word to the end of the final array

  end
    
translation.join(" ")
  
end































