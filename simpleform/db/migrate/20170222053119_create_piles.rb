class CreatePiles < ActiveRecord::Migration[5.0]
  def change
    create_table :piles do |t|
      t.string :pilematerial
      t.string :pilevolume

      t.timestamps
    end
  end
end
