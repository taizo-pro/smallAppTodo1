class AddTaskImageToTask < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :taskImage, :string
  end
end
