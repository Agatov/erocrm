class CreateVisitProgramWorkers < ActiveRecord::Migration
  def change
    create_table :visit_program_workers do |t|
      t.integer :visit_id
      t.integer :visit_program_id
      t.integer :worker_id
      t.integer :salary

      t.timestamps
    end
  end
end
