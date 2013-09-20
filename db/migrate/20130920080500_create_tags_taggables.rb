class CreateTagsTaggables < ActiveRecord::Migration
  def change
    create_table :tags_taggables do |t|
      t.references :tag, index: true
      t.integer :taggable_id, :index => true
      t.string :taggable_type

      t.timestamps
    end
  end
end
