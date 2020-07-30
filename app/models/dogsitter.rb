class Dogsitter < ApplicationRecord
  belongs_to :city
  has_many :strolls
  has_many :dogs, through: :strolls
end
