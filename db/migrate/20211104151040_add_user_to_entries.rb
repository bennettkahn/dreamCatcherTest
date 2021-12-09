class AddUserToEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :entries, :user, :string
  end
end
