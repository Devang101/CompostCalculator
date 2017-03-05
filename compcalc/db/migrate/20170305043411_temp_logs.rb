class TempLogs < ActiveRecord::Migration[5.0]
  def up
    create_table :temp_logs do |t|
      t.integer :temperature
      t.timestamps
    end
  end
  def down
    drop_table :temp_logs
  end
end
