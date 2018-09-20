class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.column :title, :string, null: false
      t.column :completed, :boolean, null: false, default: false
    end
  end
end
