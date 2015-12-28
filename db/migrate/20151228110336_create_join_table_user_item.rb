class CreateJoinTableUserItem < ActiveRecord::Migration
  def change
    create_join_table :users, :items do |t|
      t.index :user_id
      t.index :item_id
      t.integer :count, :default => 0
    end
  end
end
