class Step < ApplicationRecord
  belongs_to :trip
  has_many :step_infos, dependent: :destroy
  has_many :transportations, dependent: :destroy
end
