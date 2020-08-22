class AddAddressToSteps < ActiveRecord::Migration[6.0]
  def change
    add_column :steps, :address, :string
  end
end
