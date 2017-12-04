module EntriesHelper

  def format_currency(value)
    "#{value.round 2} €"
  end

end
