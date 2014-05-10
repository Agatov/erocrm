class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.integer :post_cd
      t.boolean :discharged, default: 0

      t.timestamps
    end
  end
end
