class BonusDrink
  def self.total_count_for(amount)
    raise ArgumentError unless amount.is_a?(Integer)

    amount + (amount / 3)
  end
end
