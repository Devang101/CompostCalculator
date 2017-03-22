class AddContentToPiles < ActiveRecord::Migration[5.0]
  def change
    add_column :piles, :content, :text
  end
end
