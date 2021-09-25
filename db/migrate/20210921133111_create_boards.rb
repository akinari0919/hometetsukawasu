class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.text :body, null: false    #'null: false'で空の投稿を防ぐ
      t.string :job, null: false
      t.integer :age, null: false 

      t.timestamps
    end
  end
end
