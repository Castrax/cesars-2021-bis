class Category < ApplicationRecord
  has_many :nominees
  has_one :answer
end
