class CreateCopiers < ActiveRecord::Migration
  def change
    create_table :copiers do |t|
      t.string :model_name
      t.string :model_type
      t.boolean :papercut
      t.boolean :coinop
      t.boolean :card_reader

      t.timestamps null: false
    end
  end
end
