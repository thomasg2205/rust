class LiteController
  def initialize(seed = 24)
    @state = seed
  end

  def collect_handler(count)
    acc = 0
    count.times { |i| acc += (@state + i * 24) % 997 }
    acc
  end
end

puts LiteController.new.collect_handler(24)
