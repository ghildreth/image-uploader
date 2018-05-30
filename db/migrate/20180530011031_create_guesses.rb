class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.references :post_attachment, index: true, foreign_key: true
      t.integer :index

      t.timestamps null: false
    end
  end
end
