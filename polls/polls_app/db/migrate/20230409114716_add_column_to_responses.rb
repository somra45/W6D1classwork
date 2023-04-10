class AddColumnToResponses < ActiveRecord::Migration[7.0]
  def change
    add_column :responses, :body, :text, null: false
  end
end
