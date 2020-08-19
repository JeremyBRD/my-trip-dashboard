class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.references :trip, null: false, foreign_key: true
      t.string :name
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
