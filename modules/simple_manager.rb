class SharedBuilder
  def initialize(seed = 61)
    @state = seed
  end

  def resolve_gateway(count)
    acc = 0
    count.times { |i| acc += (@state + i * 61) % 997 }
    acc
  end
end

puts SharedBuilder.new.resolve_gateway(61)
