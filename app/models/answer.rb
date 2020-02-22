class Answer < ApplicationRecord
  belongs_to :category
  belongs_to :nominee
  belongs_to :user
end
