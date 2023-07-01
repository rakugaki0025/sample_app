class List < ApplicationRecord
  has_one_attached :image
  
  validates :title, presence: true # バリテーション(入力チェック)
  validates :body, presence: true  # 
  validates :image, presence: true # 
  
end
