
=begin
  [Day 032] DSA
  Dijkstra's Algorithm
=end

# A helper method to find the vertex with the minimum distance
def min_distance(dist, visited)
  min = Float::INFINITY
  min_vertex = nil
  dist.each_with_index do |distance, vertex|
    if !visited[vertex] && distance <= min
      min = distance
      min_vertex = vertex
    end
  end
  min_vertex
end

# Dijkstra's Algorithm implementation
def dijkstra(graph, source)
  # Initialize the distance array with infinity for all vertices except the source
  dist = Array.new(graph.length, Float::INFINITY)
  dist[source] = 0

  # Initialize the visited array
  visited = Array.new(graph.length, false)

  # Loop through all vertices
  graph.length.times do
    # Find the vertex with the minimum distance
    u = min_distance(dist, visited)

    # Mark the vertex as visited
    visited[u] = true

    # Update the distances of the neighboring vertices
    graph[u].each_with_index do |weight, v|
      if !visited[v] && weight > 0 && dist[u] + weight < dist[v]
        dist[v] = dist[u] + weight
      end
    end
  end

  # Return the distance array
  dist
end
