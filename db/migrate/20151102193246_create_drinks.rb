class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.text :ingrediants
      t.text :directions

      t.timestamps null: false
    end
  end
end
