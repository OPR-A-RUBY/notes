class CreateNotesTags < ActiveRecord::Migration[6.0]
 
   def change
     
     create_table :notes_tags, id: false do |t|
     	 t.bigint :note_id
       t.bigint :tag_id
     end
 
     add_index :notes_tags, :note_id
     add_index :notes_tags, :tag_id
     
   end
 
 end