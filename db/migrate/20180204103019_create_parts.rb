class CreateParts < ActiveRecord::Migration[5.1]
  def change
    create_table :parts do |t|
      t.string :name
      t.float :amount
      t.string :notes

      t.timestamps
    end
  end
end
