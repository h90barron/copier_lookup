class CopierCleanup < ActiveRecord::Migration
  def change
    remove_column :copiers, :manufacturer
    remove_column :copiers, :papercut
    remove_column :copiers, :coinop
    remove_column :copiers, :card_reader
  end
end
