class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # if we delete a user we want to delete his trips
  has_many :trips, dependent: :destroy
  has_many :steps, through: :trips, dependent: :destroy
  has_many :step_infos, through: :steps, dependent: :destroy
  has_many :transportations, through: :steps, dependent: :destroy
end
