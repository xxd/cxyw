class CreateRecordSoftwares < ActiveRecord::Migration
  def change
    create_table :record_softwares do |t|
      t.string :name
      t.date :contract_date
      t.string :person_name
      t.decimal :price
      t.integer :quantity
      t.decimal :total_price
      t.string :saler

      t.timestamps
    end
  end
end
