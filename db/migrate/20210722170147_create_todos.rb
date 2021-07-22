class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :priority
      t.string :context
      t.string :completeBy
      
      t.timestamps
    end
  end
end
