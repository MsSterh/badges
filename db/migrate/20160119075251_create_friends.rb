class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.column :user_id, :integer
      t.column :friend_id, :integer
      t.boolean :approved, :default => false
      t.column :created_at, :datetime
    end
  end
end
