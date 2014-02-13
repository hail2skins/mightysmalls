class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :remember_token
      t.string :middle_name
      t.boolean :admin, default: false


      t.timestamps
    end

    add_index :owners, :remember_token
    add_index :owners, :email, unique: true
  end
end
