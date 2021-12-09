class AddIsAnonToEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :is_anon, :boolean
  end
end
