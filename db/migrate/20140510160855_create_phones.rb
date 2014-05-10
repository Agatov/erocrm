class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :name
      t.string :number
      t.boolean :deducted, default: 0

      t.timestamps
    end
  end
end
