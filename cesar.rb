letters = ["a","A","b","B","c","C","d","D","e","E","f","F","g","G","h","H","i","I","j","J","k","K", "l","L","m","M","n","N","o","O","p","P","q","Q","r","R","s","S","t","T","u","U","v","V","w","W","x", "X","y","Y","z","Z"]


def shift_places(string, number, letters)
  split_string = string.split("")
  split_string.each_with_index do |character, index|
    if letters.include?(character)
      letter_index = letters.find_index(character)
      new_letter_index = letter_index - 2*number
      new_letter = letters[new_letter_index]
      split_string[index] = new_letter
    end
  end
  print split_string.join("")
end

shift_places("pepE", 4, letters)