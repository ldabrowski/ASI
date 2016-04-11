class CreateRakieties < ActiveRecord::Migration
  def change
    create_table :rakieties do |t|
      t.string :marka
      t.string :model

      t.timestamps null: false
    end
  end
end
