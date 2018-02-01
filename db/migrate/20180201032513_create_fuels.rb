class CreateFuels < ActiveRecord::Migration[5.1]
  def change
    create_table :fuels do |t|
      t.string :date
      t.integer :in
      t.integer :out
      t.string :notes
      t.float :price

      t.timestamps
    end
  end
end
