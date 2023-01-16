#! usr/bin/ ruby

puts 'Rock (R), Paper (P), Scissors! (S)'


ropasc = gets.chomp

case ropasc
when 'r' , 'R'
  item = 'Rock' 
when 'p' , 'P'
  item = 'Paper'
when 's' , 'S'
  item = 'Scissors'
else 
  (sleep 1) && abort("No cheating!")
end

puts "You chose #{item}"

comp = ['r', 'R', 'p', 'P', 'S', 's'].sample

sleep 0.75 

case comp
when 'r' , 'R'
   citem = 'Rock'
when 'p' , 'P'
  citem = 'Paper'
when 's' , 'S'
  citem = 'Scissors'
end

puts "Computer chose #{citem}"

sleep 0.75

if item == citem 
  puts 'Darn, a draw'
elsif item == "Rock" && citem == "Scissors"
  puts 'Winner! Suck it computer!'
elsif item == "Scissors" && citem == "Paper"
  puts 'Winner! Suck it computer!'
elsif item == 'Paper' && citem == 'Rock'
  puts 'Winner! Suck it computer!' 
else
 puts 'You Lose! Sucks to Suck!'
end
