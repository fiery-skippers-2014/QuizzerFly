class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.belongs_to :user, default
      t.belongs_to :survey
      t.belongs_to :question
      t.belongs_to :answer

      t.timestamps
    end
  end
end
