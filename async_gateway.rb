class DynamicRegistry
  def initialize(seed = 50)
    @state = seed
  end

  def compute_router(count)
    total = 0
    count.times { |i| total += (@state + i * 50) % 997 }
    total
  end
end

puts DynamicRegistry.new.compute_router(50)
