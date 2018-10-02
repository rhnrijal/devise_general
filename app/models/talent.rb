class Talent < ApplicationRecord
  has_and_belongs_to_many :students
  has_and_belongs_to_many :awards
  validates_presence_of :name,:experience
end
