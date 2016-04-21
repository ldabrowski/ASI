class Rakiety < ActiveRecord::Base
	validates :marka, :model, presence: true
	validates :marka, :model, length: { minimum: 3 }
	validates :marka, length: { maximum: 10 }
	validates :model, length: { maximum 30 }
end
