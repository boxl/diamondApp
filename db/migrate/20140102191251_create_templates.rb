class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :name
      t.text :description
      t.string :min_color
      t.string :min_cut
      t.string :min_clarity
      t.string :min_polish
      t.string :min_symmetry
      t.string :min_flour

      t.timestamps
    end
  end
end
