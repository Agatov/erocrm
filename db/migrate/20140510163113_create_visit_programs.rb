class CreateVisitPrograms < ActiveRecord::Migration
  def change
    create_table :visit_programs do |t|
      t.integer :visit_id
      t.integer :program_id
      t.integer :sale
      t.integer :cash
      t.integer :salary

      t.timestamps
    end
  end
end
