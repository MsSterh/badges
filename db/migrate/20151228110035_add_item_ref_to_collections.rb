class AddItemRefToCollections < ActiveRecord::Migration
  def change
    add_reference :collections, :item, index: true, foreign_key: true
  end
end
