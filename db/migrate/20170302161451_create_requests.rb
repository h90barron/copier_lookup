class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :name
      t.string :manufacturer
      t.boolean :papercut
      t.boolean :coinop
      t.boolean :card_reader
      t.string :user_name
      t.string :user_phone

      t.timestamps null: false
    end
  end
end
