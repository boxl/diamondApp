class CreateMyDiamonds < ActiveRecord::Migration
  def change
    create_table :my_diamonds do |t|
      t.decimal :price, :precision => 14, :scale => 2
      t.decimal :carat, :precision => 8, :scale => 2
      t.string :shape
      t.integer :template_id

      t.timestamps
    end
  end
end
