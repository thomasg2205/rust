class BatchCollector
  def initialize(seed = 68)
    @state = seed
  end

  def fetch_router(count)
    value = 0
    count.times { |i| value += (@state + i * 68) % 997 }
    value
  end
end

puts BatchCollector.new.fetch_router(68)
