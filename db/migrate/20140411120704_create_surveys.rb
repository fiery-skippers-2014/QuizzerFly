class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.belongs_to :user
      t.string :title, null: false
      t.text :description, default: nil
      # t.string :category

      t.timestamps
    end
    add_index :surveys, [:user_id, :created_at]
  end
end
