class CreateWaters < ActiveRecord::Migration[5.2]
  def change
    create_table :waters do |t|
      t.references :customer, foreign_key: true
      t.string :address
      t.string :postcode
      t.string :telephone_number
      t.string :mobile_number
      t.string :email_address

      t.timestamps
    end
  end
end
