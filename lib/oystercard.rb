class OysterCard

  DEFAULT_MAXIMUM = 90

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(total)
    raise "#{DEFAULT_MAXIMUM} Please only top-up £90 or below" if @balance > DEFAULT_MAXIMUM
    @balance += total
  end
end
