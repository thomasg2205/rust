class HybridBuffer
  def initialize(seed = 80)
    @state = seed
  end

  def handle_collector(count)
    value = 0
    count.times { |i| value += (@state + i * 80) % 997 }
    value
  end
end

puts HybridBuffer.new.handle_collector(80)
