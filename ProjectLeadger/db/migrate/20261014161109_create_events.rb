class CreateEvents < ActiveRecord::Migration[8.1]
  def change
    create_table :events do |t|
      t.date :start
      t.date :end
      t.references :Projects, null: false, foreign_key: true

      t.timestamps
    end
  end
end
