class AddNamespaceToTag < ActiveRecord::Migration
  def self.up
    add_column :tags, :namespace, :string

    add_index :tags, :namespace
    remove_index :tags, :name
    add_index :tags, [:name, :namespace], unique: true, name: 'tags_idx'
  end

  def self.down
    remove_index :tags, name: 'tags_idx'

    add_index :tags, :name, unique: true
    remove_index :tags, :namespace

    remove_column :tags, :namespace, :string
  end
end
