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
when 'd' , 'D'
  item = 'Dynamite'
else 
  (sleep 1) && abort("No cheating!")
end

puts "You chose #{item}"

citem = ['Rock', 'Paper', 'Scissors'].sample

sleep 0.75

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
elsif item == 'Dynamite'
  puts 'You autowin. Hooray for cheating!'
else
 puts 'You Lose! Sucks to Suck!'
end

#Maybe add a cumulative score? Option to play again.