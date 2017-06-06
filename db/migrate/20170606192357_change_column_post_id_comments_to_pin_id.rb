class ChangeColumnPostIdCommentsToPinId < ActiveRecord::Migration[5.0]
  def change
    rename_column :comments, :post_id, :pin_id
  end
end
