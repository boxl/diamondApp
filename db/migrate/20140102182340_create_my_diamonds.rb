class CreateMyDiamonds < ActiveRecord::Migration
  def change
    create_table :my_diamonds do |t|
      t.decimal :price
      t.decimal :carat
      t.string :shape
      t.integer :template_id

      t.timestamps
    end
  end
end
