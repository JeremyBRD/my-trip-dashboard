class Transportation < ApplicationRecord
  belongs_to :step
  has_many :transports, dependent: :destroy
end
