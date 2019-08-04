class CreateFeelings < ActiveRecord::Migration[5.2]
  def change
    create_table :feelings do |t|
      t.string :coffee_shop
      t.string :wifi_password
      t.string :music
      t.string :drink
      t.string :date
      t.string :mood
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
