class DeleteTestFromEntries < ActiveRecord::Migration[6.1]
  def change
    remove_column :entries, :test
  end
end
