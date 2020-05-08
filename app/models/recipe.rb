class Recipe < ApplicationRecord
  #レシピがユーザー一人に紐づく
  belongs_to :user
  attachment :image
  
  with_options presence: true do
    validates :title
    validates :body
    validates :image
  end
end
