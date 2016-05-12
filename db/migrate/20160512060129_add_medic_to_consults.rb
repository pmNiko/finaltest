class AddMedicToConsults < ActiveRecord::Migration
  def change
    add_reference :consults, :medic, index: true
  end
end
