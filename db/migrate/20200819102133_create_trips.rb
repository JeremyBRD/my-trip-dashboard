class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.datetime :starting_date
      t.timestamp :starting_timestamp
      t.datetime :end_date
      t.timestamp :end_timestamp

      t.timestamps
    end
  end
end
