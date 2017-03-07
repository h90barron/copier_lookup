class RenameRequestModelNameToReqName < ActiveRecord::Migration
  def change
    rename_column :requests, :name, :req_name
  end
end
