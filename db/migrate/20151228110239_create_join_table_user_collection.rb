class CreateJoinTableUserCollection < ActiveRecord::Migration
  def change
    create_join_table :users, :collections do |t|
      t.index :user_id
      t.index :collection_id
      t.string :status
    end
  end
end
