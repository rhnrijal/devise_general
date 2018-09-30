class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
    where("content ILIKE ?", "%#{search}%")
  end

end
