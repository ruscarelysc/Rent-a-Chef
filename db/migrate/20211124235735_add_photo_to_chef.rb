class AddPhotoToChef < ActiveRecord::Migration[6.1]
  def change
    add_column :chefs, :photo, :string
  end
end
