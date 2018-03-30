class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.string :name
      t.integer :school_number
      t.string :birthday
      t.string :area
      t.string :marriage
      t.string :economic
      t.integer :height
      t.integer :weight
      t.string :censuc_register
      t.integer :tell_phone
      t.string :email
      t.integer :QQ
      t.integer :fixed_phone
      t.string :address
      t.integer :zip_code

      t.timestamps
    end
  end
end
