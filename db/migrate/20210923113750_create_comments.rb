class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :name, null: false
      t.text :body, null: false
      t.references :board, null: false, foreign_key: true

      t.timestamps
    end
  end
end
