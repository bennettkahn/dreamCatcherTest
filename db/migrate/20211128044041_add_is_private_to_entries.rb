class AddIsPrivateToEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :is_private, :boolean
  end
end
