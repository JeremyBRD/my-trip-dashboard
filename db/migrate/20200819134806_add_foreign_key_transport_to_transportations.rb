class AddForeignKeyTransportToTransportations < ActiveRecord::Migration[6.0]
  def change
    add_reference :transportations, :transport, null: false, foreign_key: true
  end
end
