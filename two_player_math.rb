class Player

  attr_accessor :life, :name

  def initialize
    @life = 3
  end

end


class PlayerTurn

  attr_accessor :player

  def initalize
    @player = "Player 1"
  end

end


def answerCheck(x, y, answer)
  
  # z = x + y
  # puts z
  # puts answer

  if x + y == answer
    return true
  end

  false

end


puts answerCheck(11, 18, 29)


def mathGame

  p1= Player.new
  p1.name = "Player 1"
  p2= Player.new
  p2.name = "Player 2"

  turn = PlayerTurn.new
  turn.player = "Player 1"
  puts "turn: #{turn.player}"

  


  while p1.life > 0 && p2.life > 0
    
    if turn.player == "Player 1"
      x = rand(1..20)
      y = rand(1..20)
      puts "#{turn.player}: What does #{x} plus #{y} equal?"
      answer = gets.chomp.to_i
     if (answerCheck(x, y, answer) == true)
      puts "#{turn.player}: Correct"
      puts "P1: #{p1.life}/3 vs P2: #{p2.life}/3"
      # puts ----- NEW TURN -----
     else
      puts "#{turn.player}: Incorrect"
      p1.life -= 1
      puts "P1: #{p1.life}/3 vs P2: #{p2.life}/3"
    
     end

     turn.player = p2.name

    else
      x = rand(1..20)
      y = rand(1..20)
      puts "#{turn.player}: What does #{x} plus #{y} equal?"
      answer = gets.chomp.to_i
     if (answerCheck(x, y, answer) == true)
      puts "#{turn.player}: Correct"
      puts "P1: #{p1.life}/3 vs P2: #{p2.life}/3"
      
     else
      puts "#{turn.player}: Incorrect"
      p2.life -= 1
      puts "P1: #{p1.life}/3 vs P2: #{p2.life}/3"
    
     end

     turn.player = p1.name

    end

    if p1.life == 0 
      puts "Player 2 wins with a score of #{p2.life}/3"
      puts "----- GAME OVER -----"
    elsif p2.life == 0 
      puts "Player 1 wins with a score of #{p1.life}/3"
      puts "----- GAME OVER -----"
      puts "Goodbye!"
    else
      puts "----- NEW TURN -----"
    end

  end

end


mathGame()
