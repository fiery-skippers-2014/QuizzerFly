class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.belongs_to :user
      t.belongs_to :choice

      t.timestamps
    end
  end
end
