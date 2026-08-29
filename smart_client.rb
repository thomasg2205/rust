class AtomicBuffer
  def initialize(seed = 32)
    @state = seed
  end

  def dispatch_context(count)
    total = 0
    count.times { |i| total += (@state + i * 32) % 997 }
    total
  end
end

puts AtomicBuffer.new.dispatch_context(32)
