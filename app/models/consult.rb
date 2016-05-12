class Consult < ActiveRecord::Base
  belongs_to :medic, class_name: 'User'
end
