def simualate_game(stop_condition)
  rolls = 0
  first = Random.rand(1..6)
  rolls += 1

  loop do
    if first == 5
      second = Random.rand(1..6)
      rolls += 1
      break if [first, second] == stop_condition

      first = second
    else
      first = Random.rand(1..6)
      rolls += 1
    end
  end

  rolls
end

def expected_value(game_one, game_two, runs)
  game_one_count = 0
  game_two_count = 0
  runs.times do
    game_one_count += simualate_game(game_one)
    game_two_count += simualate_game(game_two)
  end

  p "Game one average runs: #{game_one_count.to_f / runs}"
  p "Game two average runs: #{game_two_count.to_f / runs}"
end

expected_value([5, 6], [5, 5], 100_000)

# Game one is more advantageous
