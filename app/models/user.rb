class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  attachment :profile_image
         
         
         #ユーザーはたくさんのレシピを持っている。ユーザーが消去されたら紐づくレシピも削除される
  has_many :recipes, dependent: :destroy
  
  validates :username, presence: true
end
