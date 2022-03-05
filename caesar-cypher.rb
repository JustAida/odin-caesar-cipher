# Get all the alphabets.
ALPHABETS_ARRAY = ("a".."z").to_a

# Get a text to convert and the shift factor.

puts "Enter the text you want to cipher:"
string_array = gets.chomp.split("")
puts "Enter the shift factor."
shift = gets.chomp.to_i

# Create a function to modified the string.
def caesar_cipher(string_array, shift)
  modified_string = ""

  # Check each alphabet to get the index.
  string_array.each do |alphabet|
    index = ALPHABETS_ARRAY.index(alphabet.downcase)
    unless index == nil
      # Add shift factor to the index and wrap from z to a.
      shift_index = (index + shift) % 26

      # Add the shifted alphabet to modified_string.
      # Use the ternary operator to check if the alphabet should be capitalized.
      modified_string += ALPHABETS_ARRAY.include?(alphabet) ? 
        ALPHABETS_ARRAY[shift_index] :
        ALPHABETS_ARRAY[shift_index].upcase
    else
      # If the alphabet is not in ALPHABETS_ARRAY then add it without shifting.
      modified_string += alphabet
    end
  end

  modified_string
end

p caesar_cipher(string_array, shift)