class Recipe < ApplicationRecord
	attachment :image

    validates :ingredient, presence: true
    validates :title, presence: true
    validates :process, presence: true

end
