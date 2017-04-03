class AddForeignkeysToPiles < ActiveRecord::Migration[5.0]
  def up
    add_reference :piles, :temp_log, index: true, foreign_key: true
    add_reference :piles, :turn_log, index: true, foreign_key: true
    add_column :piles, :CN_ratio, :float
    add_column :piles, :volume, :float
  end

  def down
    remove_column :piles, :volume
    remove_column :piles, :CN_ratio
    remove_reference :piles, :temp_log, index: true, foreign_key: true
    remove_reference :piles, :turn_log, index: true, foreign_key: true
  end
end
