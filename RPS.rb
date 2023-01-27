#! usr/bin/ ruby

puts "Best of five!"

play_again = "Y"
compscore = 0
score = 0
while play_again.upcase() == "Y" 

  puts 'Rock (R), Paper (P), Scissors! (S)'

  ropasc = gets.chomp

  case ropasc.upcase()
  when  'R'
    item = 'Rock' 
  when 'P'
    item = 'Paper'
  when 'S'
    item = 'Scissors'
  when 'D'
    item = 'Dynamite'
  else 
    (sleep 0.75) && abort("No cheating!")
  end

  puts "You chose #{item}"

  citem = ['Rock', 'Paper', 'Scissors'].sample

  sleep 0.75

  puts "Computer chose #{citem}"

  sleep 0.75

  if item == citem 
    puts 'Darn, a draw' 
  elsif item == "Rock" && citem == "Scissors"
    puts 'Winner! Suck it computer!'; score += 1
  elsif item == "Scissors" && citem == "Paper"
    puts 'Winner! Suck it computer!'; score += 1
  elsif item == 'Paper' && citem == 'Rock'
    puts 'Winner! Suck it computer!'; score += 1
  elsif item == 'Dynamite'
    score += 1; puts "You autowin. Hooray for cheating!"
  else
    compscore += 1; puts 'You Lose! Sucks to Suck!' 
  end

  sleep 0.75 

  if score == 5 
    abort ("You win #{score} - #{compscore}")
  elsif compscore == 5
    abort ("You lose #{compscore} - #{score}")
  else
    puts "The score is #{score} - #{compscore}"
  end
 
  puts "Would you like to play again? (Y/N)"
  play_again = gets.chomp


end