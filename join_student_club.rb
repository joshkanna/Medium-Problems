def simualate_game(stop_condition)
  rolls = 0

  loop do
    first = Random.rand(1..6)
    rolls += 1
    next unless first == 5

    second = Random.rand(1..6)
    rolls += 1
    break if [first, second] == stop_condition
  end

  rolls
end

p simualate_game([5, 6])
p simualate_game([5, 5])