class AddObjectChangesColumnToVersions < ActiveRecord::Migration
  def self.up
    add_column :paper_trail_versions, :object_changes, :text
  end

  def self.down
    remove_column :paper_trail_versions, :object_changes
  end
end
