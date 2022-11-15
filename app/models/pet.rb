class Pet < ApplicationRecord
  SPECIES = ["cat", "dog", "dragon", "goldfish", "guinea pig", "unicorn"] 
  
  validates :name, presence: true
  validates :address, presence: true
  validates :age, presence: true
  validates :species, presence: true, inclusion: { in: SPECIES }
  validates :found_on, presence: true
end
