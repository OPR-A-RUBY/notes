class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.integer :user_id
      t.integer :label_id
      t.boolean :public
      t.integer :level
      t.integer :stars
      t.text :description
      t.text :body
      t.text :url

      t.timestamps
    end
  end
end
