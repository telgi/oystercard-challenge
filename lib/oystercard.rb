class OysterCard

  DEFAULT_MAXIMUM = 90

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(total)
    raise "Max balance is #{DEFAULT_MAXIMUM}. Top-up £90 or less" if (@balance + total) > DEFAULT_MAXIMUM
    @balance += total
  end

  def deduct(total)
    @balance -= total
  end
end
