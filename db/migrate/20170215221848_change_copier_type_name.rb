class ChangeCopierTypeName < ActiveRecord::Migration
  def change
    rename_column :copiers, :type, :manufacturer
  end
end
