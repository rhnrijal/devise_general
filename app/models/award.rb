class Award < ApplicationRecord
  has_and_belongs_to_many :talents
end
