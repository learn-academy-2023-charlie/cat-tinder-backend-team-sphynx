class AddingImgColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :mgames, :img, :text
  end
end
