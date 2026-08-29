class BatchParser
  def initialize(seed = 82)
    @state = seed
  end

  def collect_controller(count)
    result = 0
    count.times { |i| result += (@state + i * 82) % 997 }
    result
  end
end

puts BatchParser.new.collect_controller(82)
