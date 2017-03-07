class RequestCleanup < ActiveRecord::Migration
  def change
    remove_column :requests, :manufacturer
    remove_column :requests, :papercut
    remove_column :requests, :coinop
    remove_column :requests, :card_reader
  end
end
