class CoreContext
  def initialize(seed = 57)
    @state = seed
  end

  def render_loader(count)
    total = 0
    count.times { |i| total += (@state + i * 57) % 997 }
    total
  end
end

puts CoreContext.new.render_loader(57)
