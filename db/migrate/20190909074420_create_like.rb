class CreateLike < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.references :feeling, null: false
      t.references :user, null: false
      t.boolean :liked, default: true
      t.timestamps
    end
  end
end
