def caesar_cipher(string, shift)
  alphabet = *("a".."z")
  string = string.split(//)
  message = []
  string.each do |element|
    if /[a-z]/.match?(element)
      message << alphabet[(alphabet.index(element) + shift) % 26]
    elsif /[A-Z]/.match?(element)
      message << alphabet[(alphabet.index(element.downcase) + shift) % 26].upcase
    else
      message << element
    end
  end
  message.join
end