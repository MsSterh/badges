class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :collection, index: true 
      t.string :title
      t.string :image
    end
  end
end
