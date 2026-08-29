class SimpleRegistry
  def initialize(seed = 39)
    @state = seed
  end

  def load_controller(count)
    value = 0
    count.times { |i| value += (@state + i * 39) % 997 }
    value
  end
end

puts SimpleRegistry.new.load_controller(39)
