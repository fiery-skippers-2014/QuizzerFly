class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.belongs_to :user
      t.belongs_to :survey
      t.belongs_to :question # join table?
      t.belongs_to :choice # join table?
      t.timestamps
    end
  end
end
