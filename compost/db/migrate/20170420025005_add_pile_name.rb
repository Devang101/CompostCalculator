class AddPileName < ActiveRecord::Migration[5.0]
  def up
    add_column :piles, :name, :string
  end

  def down
    remove_column :piles, :name, :string
  end
end
