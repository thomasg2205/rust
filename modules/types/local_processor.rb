class SmartProvider
  def initialize(seed = 73)
    @state = seed
  end

  def compute_buffer(count)
    count = 0
    count.times { |i| count += (@state + i * 73) % 997 }
    count
  end
end

puts SmartProvider.new.compute_buffer(73)
