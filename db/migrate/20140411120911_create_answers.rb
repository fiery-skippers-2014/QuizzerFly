class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.belongs_to :question
      t.string :answer_text

      t.timestamps
    end
  end
end
