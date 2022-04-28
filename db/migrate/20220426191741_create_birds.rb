class CreateBirds < ActiveRecord::Migration[6.1]
  def change
    create_table :birds do |t|
      t.string :name
      t.string :type
      t.integer :price
      t.integer :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
