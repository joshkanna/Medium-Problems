def course_prerequisites(courses)
  graph = Hash.new { |h, k| h[k] = [] }
  courses.each { |course, prereqs| graph[course] += prereqs }
  
  visited = {}
  result = []

  dfs = lambda do |course|

    return false if visited[course] == -1 # Cycle detected
    return true if visited[course] == 1 # Already visited

    visited[course] = -1

    graph[course.to_sym].each do |prereq|

      return false unless dfs.call(prereq.to_sym)
    end

    visited[course] = 1 # Mark as visited
    result << course.to_s

    true
  end

  courses.keys.each do |course|

    return nil unless dfs.call(course)
  end

  result
end

p course_prerequisites({'CSC300': ['CSC100', 'CSC200'], 'CSC200': ['CSC100'], 'CSC100': []})
