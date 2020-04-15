class Product < ApplicationRecord
    validates :name,  presence: true
    validates :category, presence: true
    validates :value, presence: true
    # validates :pet, presence: true
end
