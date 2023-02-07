#! usr/bin/ ruby

print "Enter string to encode:"
string = gets.chomp()

print "Enter shift factor of cipher(max 25):"
shift = gets.chomp().to_i

shift > 26 ? shift_factor = shift % 26: shift_factor = shift

string_to_integer = string.codepoints

shifted = string_to_integer.map do |original_ascii|
    if original_ascii.between?(65,90) || original_ascii.between?(97,122)
      shift_ascii = original_ascii + shift_factor
        if shift_ascii < 97 && original_ascii.between?(97,122) || shift_ascii < 65 && original_ascii.between?(65,90)
            ascii = shift_ascii + 26 
        
        elsif shift_ascii > 122 && original_ascii.between?(97,122) || shift_ascii > 90 && original_ascii.between?(65,90)
            ascii = shift_ascii - 26 

        else
            ascii = shift_ascii
        end
   else
        ascii =  original_ascii
   end  
end

ciphered = shifted.pack("C*")

puts ciphered