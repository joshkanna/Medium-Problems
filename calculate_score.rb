# calculate_score.rb

def calculate_score(games)
  abigail_wins = 0
  benson_wins = 0
  ties = 0

  games.each { |game|
    if game[0] == "R" && game[1] == "S" || game[0] == "P" && game[1] == "R" || game[0] == "S" && game[1] == "P"
        abigail_wins += 1
    elsif 
        game[1] == "R" && game[0] == "S" || game[1] == "P" && game[0] == "R" || game[1] == "S" && game[0] == "P"
        benson_wins += 1
    else
        ties += 1
    end
  }
  if abigail_wins > benson_wins
    "Abigail"
  elsif benson_wins > abigail_wins
    "Benson"
  else
    "Tie"
  end
end

p calculate_score([["R", "P"], ["R", "S"], ["S", "P"]])