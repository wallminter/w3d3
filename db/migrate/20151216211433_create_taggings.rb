class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :url_id, null: false
      t.integer :tag_topic_id, null: false

      t.timestamps
    end
  end
end
