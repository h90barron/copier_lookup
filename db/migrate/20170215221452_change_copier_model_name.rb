class ChangeCopierModelName < ActiveRecord::Migration
  def change
    rename_column :copiers, :model_name, :name
    rename_column :copiers, :model_type, :type
  end
end
