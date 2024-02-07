def largest_rectangle(heights)
  stack = []
  max_area = 0
  i = 0

  while i < heights.length
    if stack.empty? || heights[i] >= heights[stack.last]
        stack.push(i)
        i += 1
    else
      top_index = stack.pop
      width = stack.empty? ? i : i - stack.last - 1
      area = heights[top_index] * width
      max_area = [max_area, area].max
    end
  end

  while !stack.empty?
    top_index = stack.pop
    width = stack.empty? ? i : i - stack.last - 1
    area = heights[top_index] * width
    max_area = [max_area, area].max
  end
  max_area
end