class CreateKeywords < ActiveRecord::Migration[6.1]
  def change
    create_table :keywords do |t|
      t.integer :text_id
      t.string :text

      t.timestamps
    end
  end
end
