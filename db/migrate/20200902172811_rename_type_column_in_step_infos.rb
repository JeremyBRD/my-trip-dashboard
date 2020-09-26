class RenameTypeColumnInStepInfos < ActiveRecord::Migration[6.0]
  def change
    rename_column :step_infos, :type, :info_type
  end
end
