class Student < ApplicationRecord
  has_and_belongs_to_many :talents
  validates_presence_of :name,:studentid,:email, :sex, :nationality
  validates_uniqueness_of :studentid, :email
end
