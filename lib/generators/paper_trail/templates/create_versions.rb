class CreateVersions < ActiveRecord::Migration
  def self.up
    create_table :paper_trail_versions do |t|
      t.string   :item_type, :null => false
      t.integer  :item_id,   :null => false
      t.string   :event,     :null => false
      t.string   :whodunnit
      t.text     :object
      t.datetime :created_at
    end
    add_index :paper_trail_versions, [:item_type, :item_id]
  end

  def self.down
    remove_index :paper_trail_versions, [:item_type, :item_id]
    drop_table :paper_trail_versions
  end
end
