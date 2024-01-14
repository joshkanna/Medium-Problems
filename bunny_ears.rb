# bunny_ears.rb

def bunny_ears(bunnies)
    return 0 if bunnies == 0

    2 + bunny_ears(bunnies-1)
end

p bunny_ears(4)