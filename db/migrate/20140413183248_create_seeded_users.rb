class CreateSeededUsers < ActiveRecord::Migration
  def change
    create_table :seeded_users do |t|
      t.string :user_name
      t.string :user_email
      t.string :user_password_hash
    end
  end
end


