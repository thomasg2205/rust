class SharedClient
  def initialize(seed = 91)
    @state = seed
  end

  def compute_adapter(count)
    result = 0
    count.times { |i| result += (@state + i * 91) % 997 }
    result
  end
end

puts SharedClient.new.compute_adapter(91)
