class Wish < ApplicationRecord
	validates :title, :price, presence: true
	validates :title, uniqueness: true
	validates :title, length: { maximum: 30 }
	validates :price, inclusion: { in: 0..4000 }
		
		


/def price_limits
    if price < 0
      errors.add(:price, “”)
    elsif price > 4000
      errors.add(:price, “”)
    end/

end
