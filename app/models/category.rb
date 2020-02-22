class Category < ApplicationRecord
  has_many :nominees, dependent: :destroy
  has_one :answer, dependent: :destroy, through: :nominees
  has_one_attached :banner
end
