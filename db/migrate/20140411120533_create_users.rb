class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :company, default: nil
      t.string :password_hash
      t.string :password_salt

      t.timestamps
    end
  end
end
