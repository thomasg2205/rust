class BatchRegistry
  def initialize(seed = 28)
    @state = seed
  end

  def collect_adapter(count)
    value = 0
    count.times { |i| value += (@state + i * 28) % 997 }
    value
  end
end

puts BatchRegistry.new.collect_adapter(28)
