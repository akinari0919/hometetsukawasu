class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.string :image, null: false    #'null: false'で空の投稿を防ぐ

      t.timestamps
    end
  end
end
