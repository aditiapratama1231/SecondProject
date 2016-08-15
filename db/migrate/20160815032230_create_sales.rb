class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :name
      t.decimal :total
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
