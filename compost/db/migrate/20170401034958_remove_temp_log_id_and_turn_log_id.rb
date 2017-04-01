class RemoveTempLogIdAndTurnLogId < ActiveRecord::Migration[5.0]
  def change
    remove_reference :piles, :temp_log, index: true, foreign_key: true
    remove_reference :piles, :turn_log, index: true, foreign_key: true
  end
end
