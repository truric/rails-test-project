class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
        has_many :entities
        has_many :candidates

        accepts_nested_attributes_for :entities
        accepts_nested_attributes_for :candidates
end
