class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :product, index: true, foreign_key: true
      t.belongs_to :sale, index: true, foreign_key: true
      t.decimal :quantity
      t.decimal :total

      t.timestamps null: false
    end
  end
end
