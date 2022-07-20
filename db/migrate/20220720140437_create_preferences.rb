class CreatePreferences < ActiveRecord::Migration[6.1]
  def change
    create_table :preferences do |t|
      t.string :name
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :airline, null: false, foreign_key: true

      t.timestamps
    end
  end
end
