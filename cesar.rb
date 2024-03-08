letters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]


def shift_places(string, number, letters)
  split_string = string.split("")
  split_string.each_with_index do |character, index|
    if letters.include?(character)
      letter_index = letters.find_index(character)
      new_letter_index = letter_index - number
      new_letter = letters[new_letter_index]
      split_string[index] = new_letter
    end
  end
  print split_string.join("")
end

shift_places("aaaaaa", 4, letters)