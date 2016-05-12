class Consult < ActiveRecord::Base
  validates :coverage, presence: true, length: {minimum: 4}
  validates :description, presence: true, length: {minimum: 10}
  validates :medic, presence: true

  belongs_to :medic, class_name: 'User'
end
