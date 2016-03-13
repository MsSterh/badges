class UserCollection < ActiveRecord::Base
  belongs_to :user
  belongs_to :collection

  def complited_items
    user_items.reduce([]){|arr, ui| arr << ui.item if ui.count > 0; arr }
  end
end
