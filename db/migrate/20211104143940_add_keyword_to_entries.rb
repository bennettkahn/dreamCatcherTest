class AddKeywordToEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :keyword, :string
  end
end
