class RemoveColumnFromResponse < ActiveRecord::Migration[7.0]
  def change
    remove_column :responses, :body
  end
end
