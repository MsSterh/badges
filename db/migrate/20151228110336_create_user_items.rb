class CreateUserItems < ActiveRecord::Migration
  def change
    create_table :user_items do |t|
      t.references :user, index: true 
      t.references :item, index: true 
      t.integer :count, :default => 0
    end
  end
end
