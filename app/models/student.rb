class Student < ApplicationRecord
  has_and_belongs_to_many :talents
  has_and_belongs_to_many :awards
end
