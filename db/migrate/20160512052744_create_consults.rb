class CreateConsults < ActiveRecord::Migration
  def change
    create_table :consults do |t|
      t.string :coverage
      t.text :description

      t.timestamps
    end
  end
end
