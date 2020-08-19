class CreateTransportations < ActiveRecord::Migration[6.0]
  def change
    create_table :transportations do |t|
      t.references :step, null: false, foreign_key: true
      t.string :departure_city
      t.datetime :departure_date
      t.timestamp :departure_timestamp
      t.string :destination_city
      t.datetime :arrival_date
      t.timestamp :arrival_timestamp
      t.string :flight_number

      t.timestamps
    end
  end
end
