class Trip < ApplicationRecord
  belongs_to :user
  has_many :steps, dependent: :destroy
end
