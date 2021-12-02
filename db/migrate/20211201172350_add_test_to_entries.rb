class AddTestToEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :test, :string
  end
end
