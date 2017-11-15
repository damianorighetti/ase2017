module Calculator

  def self.add(string)
    string.split(',')
          .map(&:to_i)
          .reduce 0, :+

  end

end
