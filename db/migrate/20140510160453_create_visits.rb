class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :guest_id
      t.datetime :start_time
      t.datetime :end_time
      t.integer :phone_id

      t.timestamps
    end
  end
end
