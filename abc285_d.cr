//abc285_d.cr

# require "atcoder"
# include AtCoder

macro gets
  read_line
end

macro p(*contents)
  {% unless flag?(:online_judge) %}
    puts {{*contents}}
  {% end %}
end

class CumlativeSum(T)
  @cumlative_sum : Array(T)

  def initialize(@original_array : Array(T), initial_value : T)
    @cumlative_sum = [initial_value, *@original_array].accumulate
  end

  def at(r : Range)
    if r.excludes_end?
      @cumlative_sum[r.end] - @cumlative_sum[r.begin]
    else
      @cumlative_sum[r.end + 1] - @cumlative_sum[r.begin]
    end
  end
end

class Dfs
  @@cycle = false

  def self.dfs(graph, node, visited, completed)
    visited[node] = true

    if graph.has_key?(node)
      graph[node].each do |next_node|
        next if visited.has_key?(next_node) && visited[next_node] && completed.has_key?(next_node) && completed[next_node]
        if visited.has_key?(next_node) && visited[next_node] && (!completed.has_key?(next_node) || !completed[next_node])
          @@cycle = true
          next
        end

        visited = dfs(graph, next_node, visited, completed)
      end
    end

    completed[node] = true
    visited
  end

  def self.cycle
    @@cycle
  end
end

def main
  n = gets.to_i
  graph = Hash(String, Array(String)).new
  n.times do
    s, t = gets.chomp.split
    if graph.has_key? s
      graph[s] << t
    else
      graph[s] = [t]
    end
  end
  visited = Hash(String, Bool).new
  completed = Hash(String, Bool).new
  graph.each do |k, v|
    unless visited.has_key?(k) && visited[k]
      visited = Dfs.dfs(graph, k, visited, completed)
    end
  end
  if Dfs.cycle
    puts "No"
  else
    puts "Yes"
  end
end

main
