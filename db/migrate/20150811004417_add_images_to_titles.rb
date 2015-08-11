class AddImagesToTitles < ActiveRecord::Migration
  def change
    add_column :titles, :images, :string
  end
end
