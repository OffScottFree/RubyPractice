#! usr/bin/ ruby

puts "Best of five!"

play_again = "Y"
comp_score = 0
score = 0
while play_again.upcase() == "Y" 

  puts 'Rock (R), Paper (P), Scissors! (S)'

  r_p_s = gets.chomp

  case r_p_s.upcase()
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

  comp_item = ['Rock', 'Paper', 'Scissors'].sample

  sleep 0.75

  puts "Computer chose #{comp_item}"

  sleep 0.75

  if item == comp_item 
    puts 'Darn, a draw' 
  elsif item == "Rock" && comp_item == "Scissors"
    puts 'Winner! Suck it computer!'; score += 1
  elsif item == "Scissors" && comp_item == "Paper"
    puts 'Winner! Suck it computer!'; score += 1
  elsif item == 'Paper' && comp_item == 'Rock'
    puts 'Winner! Suck it computer!'; score += 1
  elsif item == 'Dynamite'
    score += 1; puts "You autowin. Hooray for cheating!"
  else
    comp_score += 1; puts 'You Lose! Sucks to Suck!' 
  end

  sleep 0.75 

  if score == 5 
    abort ("You win #{score} - #{comp_score}")
  elsif comp_score == 5
    abort ("You lose #{comp_score} - #{score}")
  else
    puts "The score is #{score} - #{comp_score}"
  end
 
  puts "Would you like to play again? (Y/N)"
  play_again = gets.chomp


end