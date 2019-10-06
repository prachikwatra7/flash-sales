class Item < ApplicationRecord
    # belongs_to :user
    validates :title, presence: true
    validates :description, presence: true
    validates :price, presence: true
    validates :quantity, presence: true
    validates :discount_price, presence: true
    
end
