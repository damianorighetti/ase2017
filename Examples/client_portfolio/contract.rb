require 'date'

class Contract
  attr_accessor :signed_on, :pdf_path, :hourly_rate

  def initialize(signed_on, pdf_path, hourly_rate)
    raise ArgumentError.new('signed_on non è una data!') unless signed_on.is_a? Date

    @signed_on = signed_on
    @pdf_path = pdf_path
    @hourly_rate = hourly_rate
  end

  def weekly_rate
    hourly_rate * 40
  end

  def age
    Date.today - signed_on
  end

  def older_than_one_year?
    age > 365
  end
end
