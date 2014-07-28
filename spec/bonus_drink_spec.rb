require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  specify { expect(BonusDrink.total_count_for(0)).to eq 0 }
  specify { expect(BonusDrink.total_count_for(1)).to eq 1 }

  specify { expect{BonusDrink.total_count_for(nil)}.to raise_error(ArgumentError) }
  specify { expect{BonusDrink.total_count_for("1")}.to raise_error(ArgumentError) }
  specify { expect{BonusDrink.total_count_for(1.1)}.to raise_error(ArgumentError) }
end
