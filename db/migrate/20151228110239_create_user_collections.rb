class CreateUserCollections < ActiveRecord::Migration
  def change
    create_table :user_collections do |t|
      t.references :user, index: true 
      t.references :collection, index: true 
      t.string :status
    end
  end
end

