class RemoveTimeFromEntries < ActiveRecord::Migration[6.1]
  def change
    remove_column :entries, :time, :datetime
  end
end
