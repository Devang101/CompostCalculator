class AddForeignKeysToLogs < ActiveRecord::Migration[5.0]
  def change
    add_column :temp_logs, :pile_id, :integer
    add_column :temp_logs, :user_id, :integer

    add_column :turn_logs, :pile_id, :integer
    add_column :turn_logs, :user_id, :integer
  end
end
