# percent_filled.rb

def percent_filled(arr)
  rows = arr.length
  cols = arr[0].length

  denominator = (rows - 2) * (cols - 2)
  numerator = 0

  (1...rows - 1).each do |i|
    arr[i].each_char do |char|
      numerator += 1 if char == 'o'
    end
  end
  "#{(numerator / denominator.to_f * 100).round}%"
end

p percent_filled([
  "#######",
  "#o oo #",
  "#######"
]) 