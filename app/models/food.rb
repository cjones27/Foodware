class Food < ApplicationRecord
  belongs_to :user
  belongs_to :foodplace
end
