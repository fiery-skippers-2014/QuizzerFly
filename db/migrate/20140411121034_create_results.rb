class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.belongs_to :user
      t.belongs_to :survey
      t.belongs_to :question
      t.belongs_to :choice

      t.timestamps
    end
  end
end
