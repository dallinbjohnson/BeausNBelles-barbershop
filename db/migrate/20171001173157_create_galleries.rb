class CreateGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :galleries do |t|
      t.text :title
      t.text :image

      t.timestamps
    end
  end
end
