def caesar_cipher(string, shift)
  string_array = Array.new

  string.split('').each do |split_string|
    if split_string.ord.between?(65, 90) then
      string_array << ((split_string.ord + shift - 65) % 26 + 65).chr
    elsif split_string.ord.between?(97, 122) then
      string_array << ((split_string.ord + shift - 97) % 26 + 97).chr
    else
      string_array << split_string
    end
  end

  p string_array.join
end

caesar_cipher("Whats up dog!", 26)