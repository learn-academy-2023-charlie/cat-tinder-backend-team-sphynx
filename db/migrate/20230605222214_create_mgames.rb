class CreateMgames < ActiveRecord::Migration[7.0]
  def change
    create_table :mgames do |t|
      t.string :name
      t.string :game_type
      t.string :file_size
      t.text :summary

      t.timestamps
    end
  end
end
