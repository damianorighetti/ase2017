require './client'

class Friend < Client
  attr_accessor :discount_rate

  def hourly_rate
    super * discount_rate
  end
end
