class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.integer :duration
      t.integer :price
      t.integer :manager_salary
      t.integer :masseuse_salary
      t.integer :cash
      t.integer :number_of_masseuses

      t.timestamps
    end
  end
end
