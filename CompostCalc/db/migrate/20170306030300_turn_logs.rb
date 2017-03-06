class TurnLogs < ActiveRecord::Migration[5.0]
  def up
    create_table :turn_logs do |t|
      t.timestamps
    end
  end
  def down
    drop_table :turn_logs
  end
end
