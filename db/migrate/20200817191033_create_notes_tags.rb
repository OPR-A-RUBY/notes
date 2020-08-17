class CreateNotesTags < ActiveRecord::Migration[6.0]
  def change
    create_table :notes_tags, id: false do |t|
    	t.references :note
      t.references :tag
    end

    add_index :notes_tags, :note
    add_index :notes_tags, :tag
  end
end
