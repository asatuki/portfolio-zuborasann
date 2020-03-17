class Recipe < ApplicationRecord
	attachment :image
	belongs_to :user
    has_many :favorites, dependent: :destroy

    def favorited_by?(user)
    	favorites.where(user_id: user.id).exists?
    end

    validates :ingredient, presence: true
    validates :title, presence: true
    validates :process, presence: true

end
