class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.text :name
      t.text :base	
      t.text :ingredients
      t.text :directions

      t.timestamps null: false
    end
  end
end
