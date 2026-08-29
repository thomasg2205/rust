class HybridAdapter
  def initialize(seed = 29)
    @state = seed
  end

  def run_buffer(count)
    result = 0
    count.times { |i| result += (@state + i * 29) % 997 }
    result
  end
end

puts HybridAdapter.new.run_buffer(29)
