class CreateShipings < ActiveRecord::Migration
  def change
    create_table :shipings do |t|
      t.string :title
      t.text :description
      t.string :dizhi
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :shipings, :users
  end
end
