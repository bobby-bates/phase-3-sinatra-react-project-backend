class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :body
      t.belongs_to :category

      t.timestamps
    end
  end
end
