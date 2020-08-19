class CreateStepInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :step_infos do |t|
      t.references :step, null: false, foreign_key: true
      t.string :type
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
