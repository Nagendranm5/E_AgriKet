class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :email
      t.string :mobile
      t.string :phone
      t.string :whatsapp
      t.string :role
      t.boolean :active
      t.string :country
      t.string :state
      t.string :district
      t.string :city
      t.string :address
      t.string :pincode
      t.string :gender
      t.string :password_digest

      t.timestamps
    end
  end
end
