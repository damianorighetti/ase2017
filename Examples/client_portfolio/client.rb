require './contract'

class Client
  attr_accessor :name, :surname
  attr_reader :contract

  def initialize(name, surname)
    @name = name
    @surname = surname
    @contract = []
  end

  def fullname
    "#{@name} #{@surname}"
  end

  def to_s
    fullname
  end

  def add_contract(signed_on, path_to_pdf, hourly_rate)
    @contract << Contract.new(signed_on, path_to_pdf, hourly_rate)
  end

  def last_contract
    @contract.last
  end

  def hourly_rate
    last_contract.hourly_rate + (0.22 * last_contract.hourly_rate)
  end
end
