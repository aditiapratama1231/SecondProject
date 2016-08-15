class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.decimal :price
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
