class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :content, limit: 100
      t.references :feeling, null: false
      t.references :user, null: false
      t.timestamps
    end
  end
end
