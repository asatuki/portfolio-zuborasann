class Recipe < ApplicationRecord

	belongs_to :user
    attachment :image

    has_many :post_messages, dependent: :destroy
    has_many :favorites, dependent: :destroy

    def favorited_by?(user)
    	favorites.where(user_id: user.id).exists?
    end

    def self.search(search)
      return Recipe.all unless search
      Recipe.where(["title LIKE ?", "%#{search}%"])
    end

    validates :ingredient, presence: true
    validates :title, presence: true
    validates :process, presence: true

end
