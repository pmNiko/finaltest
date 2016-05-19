class CreateConsultsCategories < ActiveRecord::Migration
  def change
    create_table(:consults_categories, :id => false) do |t|
      t.integer :consult_id
      t.integer :category_id
    end
    add_index(:consults_categories, [:consult_id, :category_id])
  end
end
