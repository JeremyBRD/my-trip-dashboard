class Step < ApplicationRecord
  belongs_to :trip
  has_many :step_infos
  has_many :transportations
end
