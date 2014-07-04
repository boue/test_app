class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :score
      t.references :picture, index: true

      t.timestamps
    end
  end
end
