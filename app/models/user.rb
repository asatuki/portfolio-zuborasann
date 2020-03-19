class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recipes
  has_many :sub_recipes, through: :favorites, source: :recipe, dependent: :destroy
  has_many :post_messages, dependent: :destroy
  has_many :favorites, dependent: :destroy
end
