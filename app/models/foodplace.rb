class Foodplace < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :address, presence: true, uniqueness: true
    validates :score, presence: true
    validates :phone, presence: true

    has_many :comments
end
